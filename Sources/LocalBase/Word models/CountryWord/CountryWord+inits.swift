

public extension CountryWord {
    
    /// tries all possible values using the provided hints and inits with first match (using str comparison)
    init?(currencyStr: Str,
          possibleCountries: Set<CountryL> = CountryL.allForms,
          _ possibleLangs: Set<LangL> = LangL.allForms) {
        self.init(currencyStr, isCurrency: true,
                  possibleCountries: possibleCountries, possibleLangs)
    }
    
    /// tries all possible values using the provided hints and inits with first match (using str comparison)
    init?(countryStr: Str,
          possibleCountries: Set<CountryL> = CountryL.allForms,
          _ possibleLangs: Set<LangL> = LangL.allForms) {
        self.init(countryStr, isCurrency: false,
                  possibleCountries: possibleCountries, possibleLangs)
    }
    
    //MARK: -
    
    /// tries all possible values using the provided hints and inits with first match (using str comparison)
    init?(currencyStr: Str,
          country: CountryL? = nil,
          _ lang: LangL? = nil) {
        self.init(currencyStr, isCurrency: true,
                  country: country, lang)
    }
    
    /// tries all possible values using the provided hints and inits with first match (using str comparison)
    init?(countryStr: Str,
          country: CountryL? = nil,
          _ lang: LangL? = nil) {
        self.init(countryStr, isCurrency: false,
                  country: country, lang)
    }
}

private extension CountryWord {
    
    /// tries all possible values using the provided hints and inits with first match (using str comparison)
    init?(_ str: Str,
          isCurrency: Bool,
          possibleCountries: Set<CountryL> = CountryL.allForms,
          _ possibleLangs: Set<LangL> = LangL.allForms) {
        
        if isCurrency {
            if let a = Self.allCurrencies(countries: possibleCountries.countryLIDs, possibleLangs.langLIDs).first(where: {
                $0.str == str
            }) {
                self = a
            } else {
                return nil
            }
        } else {
            if let a = Self.allCountries(countries: possibleCountries.countryLIDs, possibleLangs.langLIDs).first(where: {
                $0.str == str
            }) {
                self = a
            } else {
                return nil
            }
        }
    }
    
    /// tries all possible values using the provided hints and inits with first match (using str comparison)
    /// if country or lang hints are not provided, tries all and returns first match
    init?(_ str: Str,
          isCurrency: Bool,
          country: CountryL? = nil,
          _ lang: LangL? = nil) {
        
        let countries: Set<CountryL>
        if let a = country {
            countries = Set([a])
        } else {
            countries = CountryL.allForms
        }
        
        let langs: Set<LangL>
        if let a = lang {
            langs = Set([a])
        } else {
            langs = LangL.allForms
        }
        self.init(str, isCurrency: isCurrency,
                  possibleCountries: countries, langs)
    }
}
