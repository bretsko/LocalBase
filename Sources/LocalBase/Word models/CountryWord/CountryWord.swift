

protocol CountryWordT: HasAllFormsT, HasStrP {} //HasDescrP


/// can represent either a country or a currency in the given lang
public struct CountryWord: CountryWordT {
    
    public var country: CountryLID
    
    // ? HasLangLIDP
    public var lang: LangLID
    
    /// if true this word is currency, otherwise it's country name
    public var isCurrency: Bool
}

public extension CountryWord {
    
    init(_ country: CountryLID,
         _ lang: LangLID,
         isCurrency: Bool) {
        self.country = country
        self.lang = lang
        self.isCurrency = isCurrency
    }
    
    var str: Str {
        if isCurrency {
            return country.currencyName(translatedInto: lang)!
        }
        return country.countryName(translatedInto: lang)!
    }
}
