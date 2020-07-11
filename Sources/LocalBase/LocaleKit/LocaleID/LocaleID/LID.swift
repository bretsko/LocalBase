
public protocol LIDP: StrEnumP, HasLocale {
    //var langCode: Str {get}
    //func langName(translatedInto lid: LIDP) -> Str?
}

// children
typealias LIDT = LIDP & HasLID & StrEnumT



/// List of all locale identifiers, representing ISO 639-1 language codes or combined ISO 639-1 language codes and ISO 3166-1 regional codes (for example, en_US)
/// The underscore separates the language from the region. The hyphen separates the language into the base language and its dialect or script.
public enum LID: LIDP, HasAllFormsT {
    // see https://unicode-org.github.io/cldr-staging/charts/37/summary/root.html
    
    // see rules about using hyphen vs underscore 
    //https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/LanguageandLIDs/LanguageandLIDs.html
    
    //https://www.localeplanet.com/icu/qu-EC/index.html

    case lang(LangLID)

    case country(CountryLID)    
    
    case region(RegionLID)
    
    
    // these 2 below have no language
    case current
    
    /// currentAutoUpdating
    case autoUpdating
}

public extension LID {
    
    init(_ lid: LIDP) {
        
        if let a = lid as? LangLID {
            self.init(a)
        } else if let a = lid as? CountryLID {
            self.init(a)
        } else if let a = lid as? RegionLID {
            self.init(a)
        } else { //if let a = lid as? LID 
            self.init(lid.s)!
        }
    }
    
    init(_ country: CountryLID) {
        self = .country(country)
    }
    init(_ lang: LangLID) {
        self = .lang(lang)
    }
    init(_ region: RegionLID) {
        self = .region(region)
    }
    
    
    init?(rawValue: Str) {
        if let a = CountryLID(rawValue: rawValue) {
            self = .country(a)
        } else if let a = RegionLID(rawValue: rawValue) {
            self = .region(a)
        } else if let a = LangLID(rawValue: rawValue) {
            self = .lang(a)
        } else if rawValue == "current" {
            self = .current
        } else if rawValue == "currentAutoUpdating" {
            self = .autoUpdating
        } else {
            return nil
        }
    }
    
    var child: LIDP? {
        switch self {
        case .country(let a):
            return a
        case .region(let a):
            return a
        case .lang(let a):
            return a
        case .current, .autoUpdating:
            return nil
        }
    }
    
    /// only .current, .autoUpdating return nil
    var langCode: Str? {
        child?.langCode
    }
    
    var rawValue: Str {
        switch self {
        case .country(let a):
            return a.s
        case .region(let a):
            return a.s
        case .lang(let a):
            return a.s
        case .current:
            return "current"
        case .autoUpdating:
            return "currentAutoUpdating"
        }
    }
    
    // only .current, .currentAutoUpdating - return nil ?
    /// returns translation into the supplied lang(locale)
    func langName(translatedInto lid: LIDP) -> Str? {
        if let a = langCode {
            return lid.transl(langCode: a)
        }
        return nil
    }
    
    
    /// doesn't include current and autoUpdating bc they are not used for inter/transl
    static var allForms: Set<Self> {
        Set( RegionLID.allCases.map{$0.lid} +
                CountryLID.allCases.map{$0.lid}  +
                LangLID.allCases.map{$0.lid} +
                [Self.current, Self.autoUpdating])
    }
    
    static var allIdentifiers: Set<Str> {
        allForms.strs.set
        //? (allForms.strs + [ "current", "currentAutoUpdating"]).set
    }
    
    //MARK: - sort
    
    enum SortingMode {
        
        /// language popularity
        case popularity
        
        case population
    }
    
    //TODO:
    // allLids / allForms
    static func allCases(sortedBy: SortingMode) -> Set<LID> {
        // find list of most popular locales
        fatalError()
    }
    
    
    //MARK: - Locale
    
    /// uses first match from allForms
    init(_ locale: Locale) {
        self.init(rawValue: locale.identifier)!
    }
    
    var locale: Locale {
        switch self {
        case .current:
            return .current
        case .autoUpdating:
            return .autoupdatingCurrent
        default:
            return .init(identifier: rawValue)
        }
    }
    
    static var allLocales: Set<Locale> {
        allForms.map{$0.locale}.set
    }
    
    //MARK: -
    
    
    /// currencyName == nil - for all these, but language is present
    /// only 4 cases:
    /// englishWorld - "English", "World"
    /// englishEurope - "English", "Europe"
    /// spanishLatinAmerica - "español, Latinoamérica"
    /// yiddishWorld, arabicWorld
    var isGeographicalEntity: Bool {
        RegionLID.geoRegions.map{$0.lid}.contains(self)
    }
    
    ///  can be used for currency operations
    var canBeUsedForCurrencies: Bool {
        isCountry
    }
    
    //func canBeUsedForCurrencies -> Bool {
    //CountryLID.lids.contains(self)
    
    // ! when possible better use CountryLID.lids
    /// all cases which can be used for currency operations
    /// LangLID and RegionLID
    //    static var nonCurrencyCases: Set<LID> {
    //        LangLID.lids.union(RegionLID.lids)
    //    }
    
    
    //MARK: - cotrs
    
    static var ukrainian: Self {
        LangLID.ukrainian.lid
    }
    static var ukrainianUkraine: Self {
        CountryLID.ukrainianUkraine.lid
    }
    
    static var russian: Self {
        LangLID.russian.lid
    }
    static var russianUkraine: Self {
        CountryLID.russianUkraine.lid
    }
    
    static var english: Self {
        LangLID.english.lid
    }
    static var englishUS: Self {
        CountryLID.englishUnitedStates.lid
    }
}

// use CountryLID.lids
//    static var allCurrencyCases: Set<LID> {
//        //TODO: try find better way to make disjoint set
//        // if cannot find - add this func to Set
//        let a = allForms.symmetricDifference(nonCurrencyCases)
//        let b = allForms.intersection(nonCurrencyCases)
//        return a.union(b)
//    }
