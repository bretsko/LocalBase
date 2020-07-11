

public extension LID {

    
    /// if this locale has regionCode, its translation into the supplied locale is returned
    func countryName(translatedInto lid: LIDP) -> Str? {
        switch self {
        case .country(let a):
            return a.countryName(translatedInto: lid)
        case .region(let a):
            return a.regionName(translatedInto: lid)
        default:
            return nil
        }
    }
    
    /// if this locale has currencyCode, its translation into the supplied locale is returned
    func currencyName(translatedInto lid: LIDP) -> Str? {
        _country?.currencyName(translatedInto: lid)
    }
    
    
    //MARK: -
    
    var isRegion: Bool {
        switch self {
        case .region:
            return true
        default:
            return false
        }
    }
    var isCountry: Bool {
        switch self {
        case .country:
            return true
        default:
            return false
        }
    }
    var isLang: Bool {
        switch self {
        case .lang:
            return true
        default:
            return false
        }
    }
    

    //MARK: -

    var _region: RegionLID? {
        switch self {
        case .region(let a):
            return a
        default:
            return nil
        }
    }
    var _country: CountryLID? {
        switch self {
        case .country(let a):
            return a
        default:
            return nil
        }
    }
    var lang: LangLID? {
        switch self {
        case .lang(let a):
            return a
        default:
            return nil
        }
    }
}


/// returns translation into the supplied lang(locale)
/// only .current, .currentAutoUpdating - return nil
//    func langName(translatedInto lid: LangLID) -> Str? {
//        switch self {
//        case .country(let a):
//            return a.langName(translatedInto: lid)
//        case .lang(let a):
//            return a.langName(translatedInto: lid)
//        case .region(let a):
//            return a.langName(translatedInto: lid)
//        default:
//            return nil
//        }
//    }
