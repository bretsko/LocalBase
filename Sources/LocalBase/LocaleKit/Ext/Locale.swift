

@_exported import Base


extension Locale: HasAllFormsT, HasIdP {}
public extension Locale {
    
    init(_ id: Str) {
        self.init(identifier: id)
    }
    
    /// Don't use availableIdentifiers
    /// availableIdentifiers returns ids only with underscores, incorrect format, need to init Locale first to get correct
    static var availableIDs: Set<Str> {
        allForms.map{$0.id}.set
    }
    
    static var allForms: Set<Locale> {
        availableIdentifiers.map {
            Locale(identifier:$0)
        }.set
    }
    
    // ! when Locale inits with id - in some cases (!!) it removes Cyrl / Latn / Guru
    //For ex. az-Cyrl_AZ ms-Latn mn-Cyrl ky-Cyrl uz-Latn tk-Latn pa-Guru tg-Cyrl ha-Latn az-Latn shi-Latn bs-Latn bm-Latn tzm-Latn sr-Cyrl kk-Cyrl
    var lid: LID {
        LID(rawValue: id)!
    }
    
    /// uses first match from allForms
    init?(_ lid: LID) {
        if let a = Self.allForms.first(where: { locale in
            lid.locale == locale
        }){
            self = a
        } else {
            return nil
        }
    }
    
    
    //MARK: - preferred lists
    
    static var preferredLangCodes: [Str] {
        // ["en", "en-US", "uk-US", "sv-US", "nb-US", "nb", "uk", "ru"]
        preferredLanguages.map {
            
            //TODO: try use Locale.components(fromIdentifier
            if let i =  $0.firstIndex(of: "-") {
                return Str($0.prefix(upTo: i))
            }
            return nil
        }.compactMap{$0}.removingDuplicates!
    }
    static var topPreferredLangCode: Str {
        preferredLangCodes[0]
    }
    
    /// ISO alpha2 codes
    /// For ex. ["en", "en-US", "uk-US", "sv-US", "nb-US", "nb", "uk", "ru"]
    static var preferredRegionCodes: [Str] {
        preferredLanguages.map {
            
            //TODO: try use Locale.components(fromIdentifier
            if let i =  $0.firstIndex(of: "-") {
                return Str($0.suffix(from: $0.index(after: i)))
            }
            return nil
        }.compactMap{$0}.removingDuplicates!
    }
    
    /// ISO alpha2 code
    static var topPreferredRegionCode: Str {
        preferredRegionCodes[0]
    }
    
    
    ///  UNIX representation of locale usually used for normalizing.
    static var posix: Locale {
        .init(identifier: "en_US_POSIX")
    }
        
    
    //MARK: - localizedString
    
    var langName: Str? {
        if let code = languageCode {
            return
                localizedString(forLanguageCode: code)
        }
        return nil
    }
    
    var currencyName: Str? {
        if let code = currencyCode {
            return
                localizedString(forCurrencyCode: code)
        }
        return nil
    }
    var isCountry: Bool {
        currencyName != nil
    }
    
    /// currencyName == nil - for all these, but language is present
    /// only 4 cases:
    /// englishWorld - "English", "World"
    /// englishEurope - "English", "Europe"
    /// spanishLatinAmerica - "español, Latinoamérica"
    /// yiddishWorld, arabicWorld
    var isGeographicalEntity: Bool {
        lid.isGeographicalEntity
    }
    
    /// if this locale is country - returns name
    var countryName: Str? {
        if let code = regionCode {
            return
                localizedString(forRegionCode: code)
        }
        return nil
        
        //object(forKey: Locale.Key.regionCode) as? Str
        //        if let countryCode = regionCode  {
        //            return displayName(forKey: Locale.Key.regionCode,
        //    value: countryCode)
        //        }
        //        return nil
    }
}


///// Returns a localized string for a specified identifier.
/////
///// For example, in the "en" locale, the result for `"es"` is `"Spanish"`.
//public func localizedString(forIdentifier identifier: String) -> String?

///// Returns a localized string for a specified language code.
/////
///// For example, in the "en" locale, the result for `"es"` is `"Spanish"`.
//public func localizedString(forLanguageCode langCode: String) -> String?

///// Returns a localized string for a specified region code.
/////
///// For example, in the "en" locale, the result for `"fr"` is `"France"`.
//public func localizedString(forRegionCode regionCode: String) -> String?

///// Returns a localized string for a specified script code.
/////
///// For example, in the "en" locale, the result for `"Hans"` is `"Simplified Han"`.
//public func localizedString(forScriptCode scriptCode: String) -> String?

///// Returns a localized string for a specified variant code.
/////
///// For example, in the "en" locale, the result for `"POSIX"` is `"Computer"`.
//public func localizedString(forVariantCode variantCode: String) -> String?

///// Returns a localized string for a specified `Calendar.Identifier`.
/////
///// For example, in the "en" locale, the result for `.buddhist` is `"Buddhist Calendar"`.
//public func localizedString(for calendarIdentifier: Calendar.Identifier) -> String?

///// Returns a localized string for a specified ISO 4217 currency code.
/////
///// For example, in the "en" locale, the result for `"USD"` is `"US Dollar"`.
///// - seealso: `Locale.isoCurrencyCodes`
//public func localizedString(forCurrencyCode currencyCode: String) -> String?

///// Returns a localized string for a specified ICU collation identifier.
/////
///// For example, in the "en" locale, the result for `"phonebook"` is `"Phonebook Sort Order"`.
//public func localizedString(forCollationIdentifier collationIdentifier: String) -> String?

///// Returns a localized string for a specified ICU collator identifier.
//public func localizedString(forCollatorIdentifier collatorIdentifier: String) -> String?


///// Returns the language code of the locale, or nil if has none.
/////
///// For example, for the locale "zh-Hant-HK", returns "zh".
//public var langCode: String? { get }

///// Returns the region code of the locale, or nil if it has none.
/////
///// For example, for the locale "zh-Hant-HK", returns "HK".
//public var regionCode: String? { get }






public extension NSLocale {
    
    /// can init with currency ISO code, for ex "USD", "UAH", etc
    convenience init(currencyCode: Str) {
        let idFromComponents = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.currencyCode.rawValue: currencyCode])
        let canonical = NSLocale.canonicalLocaleIdentifier(from: idFromComponents)
        self.init(localeIdentifier: canonical)
    }
}
