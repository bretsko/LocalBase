

public extension LID {
        
    
    static func translLang(withLangCode code: Str,
                           into lid: LIDP) -> Str? {
        lid.locale.localizedString(forLanguageCode: code)
    }
    
    static func translCountry(withCountryCode code: Str,
                              into lid: LIDP) -> Str? {
        lid.locale.localizedString(forRegionCode: code)
    }
    
    static func translCurrency(withCurrencyCode code: Str,
                               into lid: LIDP) -> Str? {
        lid.locale.localizedString(forCurrencyCode: code)
    }
    
    
    //MARK: - inter
    
    /// uses first match
    init?(langCode: Str) {
        if let a = LID.allForms.first(where: {
            $0.langCode == langCode
        }) {
            self = a
        } else {
            return nil
        }
    }
    
    /// uses first match
    init?(currencyCode: Str) {
        if let a = LID.allForms.first(where: {
            $0.currencyCode == currencyCode
        }) {
            self = a
        } else {
            return nil
        }
    }
    
    /// uses first match
    init?(regionCode: Str) {
        if let a = LID.allForms.first(where: {
            $0.regionCode == regionCode
        }) {
            self = a
        } else {
            return nil
        }
    }
    
//    extension Locale {
    // ??
//    /// can init with currency ISO code, for ex "USD", "UAH", etc
//    init(currencyCode: Str) {
//        self = NSLocale(currencyCode: currencyCode) as Locale
//        //or can try use LID.getLocale(fromCurrencyCode: currencyCode)
//        //TODO: test which one is better, faster, covers more cases
//    }
//    }
    /// can init with currency ISO code, for ex "USD", "UAH", etc
//    init(currencyCode: Str) {
//        self.init(Locale.init(currencyCode: currencyCode))
//    }
    
    //    static func getLocale(fromLanguageCode code: Str) -> LID? {
    //        LID.allForms.first(where: {
    //            $0.langCode == code
    //        })
    //    }
    //
    //    static func getLocale(fromRegionCode code: Str) -> LID? {
    //        LID.allForms.first(where: {
    //            $0.regionCode == code
    //        })
    //    }
    //
    //    static func getLocale(fromCurrencyCode code: Str) -> LID? {
    //        LID.allForms.first(where: {
    //            $0.currencyCode == code
    //        })
    //    }
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

///// Returns a localized string for a specified ICU collation identifier.
/////
///// For example, in the "en" locale, the result for `"phonebook"` is `"Phonebook Sort Order"`.
//public func localizedString(forCollationIdentifier collationIdentifier: String) -> String?

///// Returns a localized string for a specified ICU collator identifier.
//public func localizedString(forCollatorIdentifier collatorIdentifier: String) -> String?

