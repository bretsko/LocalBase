

public extension CountryLID {
    
    var lid: LID {
        .country(self)
    }
    
    //TODO: try bridge Sets(!) via langLID 
//    var langID: LangL {get}
//
//    init?(_ langID: LangL)
    
    //MARK: -
    
    //TODO: try use preferredRegionCodes
    //static var preferredLangLIDs: [CountryLID] {
    
    /// returns translation into the supplied lang(locale)
    func countryName(translatedInto lid: LIDP) -> Str? {
        lid.transl(regionCode: regionCode!)!
//                if let code = regionCode {
//                    return lid.localizedString(forRegionCode: code)
//                }
//                return nil
    }
    
    /// returns translation into the supplied lang(locale)
    func currencyName(translatedInto lid: LIDP) -> Str? {
        lid.transl(currencyCode: currencyCode!)!
        
//                if let code = currencyCode {
//                    return lid.localizedString(forCurrencyCode: code)
//                }
//                return nil
    }
    
    //    private func isValidCase(_ targetLID: LangLID) -> Bool {
    //        targetLID != .current //&& targetLocale != .autoUpdating
    //    }
}



