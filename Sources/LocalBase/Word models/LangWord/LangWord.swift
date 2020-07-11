

protocol LangWordT: HasAllFormsT, HasStrP {} //HasDescrP


/// can represent either a country or a currency in the given lang
public struct LangWord: LangWordT {
    
    /// language object
    public var lid: LangLID
    
    // ? HasLangLIDP
    /// lang into which lid is translated
    public var lang: LangLID
}

public extension LangWord {
    
    init(_ lid: LangLID,
         _ lang: LangLID) {
        self.lid = lid
        self.lang = lang
    }
    
    var str: Str {
        lid.langName(translatedInto: lang)!
    }
}


//    //MARK: -
//
//    /// tries all possible values using the provided hints and inits with first match (using str comparison)
//    init?(currencyStr: Str,
//          possibleCountries: Set<CountryL> = CountryL.allForms,
//          possibleLangs: Set<LangL> = LangL.allForms) {
//
//        self.init(currencyStr, isCurrency: true, possibleCountries: possibleCountries, possibleLangs: possibleLangs)
//    }
//
//    /// tries all possible values using the provided hints and inits with first match (using str comparison)
//    init?(countryStr: Str,
//          possibleCountries: Set<CountryL> = CountryL.allForms,
//          possibleLangs: Set<LangL> = LangL.allForms) {
//        self.init(countryStr, isCurrency: false, possibleCountries: possibleCountries, possibleLangs: possibleLangs)
//    }
//
//    //MARK: -
//
//    /// tries all possible values using the provided hints and inits with first match (using str comparison)
//    init?(currencyStr: Str,
//          country: CountryL? = nil,
//          lang: LangL? = nil) {
//        self.init(currencyStr, isCurrency: true,
//                  country: country, lang: lang)
//    }
//
//    /// tries all possible values using the provided hints and inits with first match (using str comparison)
//    init?(countryStr: Str,
//          country: CountryL? = nil,
//          lang: LangL? = nil) {
//        self.init(countryStr, isCurrency: false,
//                  country: country, lang: lang)
//    }
//}
//
//private extension CountryWord {
//
//    /// tries all possible values using the provided hints and inits with first match (using str comparison)
//    init?(_ str: Str,
//          isCurrency: Bool,
//          possibleCountries: Set<CountryL> = CountryL.allForms,
//          possibleLangs: Set<LangL> = LangL.allForms) {
//
//        if isCurrency {
//            if let a = Self.allCurrencies(countries: possibleCountries.countryLIDs, possibleLangs.langLIDs).first(where: {
//                $0.str == str
//            }) {
//                self = a
//            } else {
//                return nil
//            }
//        } else {
//            if let a = Self.allCountries(countries: possibleCountries.countryLIDs, possibleLangs.langLIDs).first(where: {
//                $0.str == str
//            }) {
//                self = a
//            } else {
//                return nil
//            }
//        }
//    }
//
//
//    /// tries all possible values using the provided hints and inits with first match (using str comparison)
//    /// if country or lang hints are not provided, tries all and returns first match
//    init?(_ str: Str,
//          isCurrency: Bool,
//          country: CountryL? = nil,
//          lang: LangL? = nil) {
//
//        let possibleCountries: Set<CountryL>
//        if let a = country {
//            possibleCountries = Set([a])
//        } else {
//            possibleCountries = CountryL.allForms
//        }
//
//        let possibleLangs: Set<LangL>
//        if let a = lang {
//            possibleLangs = Set([a])
//        } else {
//            possibleLangs = LangL.allForms
//        }
//        self.init(str, isCurrency: isCurrency,
//                  possibleCountries: possibleCountries,
//                  possibleLangs: possibleLangs)
//    }
//}
