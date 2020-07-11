

public extension CountryWord {
    
    static var allForms: Set<CountryWord> {
        allCurrencies.union(allCountries)
    }
    
    /// all possible cases with all langs
    static var allCurrencies: Set<CountryWord> {
        makeAll(isCurrency:true)
    }
    
    /// all possible cases with all langs
    static var allCountries: Set<CountryWord> {
        makeAll(isCurrency:false)
    }
    
    
    //MARK: -
    
    static func allCurrencies(countries: Set<CountryLID> = CountryLID.allForms,
                              _ langs: Set<LangLID> = LangLID.allForms) -> Set<CountryWord> {
        makeAll(isCurrency: true,
                countries:countries,
                langs:langs)
    }
    
    static func allCountries(countries: Set<CountryLID> = CountryLID.allForms,
                             _ langs: Set<LangLID> = LangLID.allForms) -> Set<CountryWord> {
        makeAll(isCurrency:false,
                countries:countries,
                langs:langs)
    }
    
    
    //    // checks all possible values in given langs
    //    static func isCurrency(_ str: Str, possibleLangs: Set<LangLID>) -> Bool
    //
    //    // checks all possible values in given langs
    //    static func isCountry(_ str: Str, possibleLangs: Set<LangLID>) -> Bool
}

private extension CountryWord {
    
    static func makeAll(isCurrency: Bool,
                        countries: Set<CountryLID> = CountryLID.allForms,
                        langs: Set<LangLID> = LangLID.allForms) -> Set<CountryWord> {
        countries.map { countryLID in
            langs.map { langLID in
                CountryWord(countryLID, langLID,
                            isCurrency: isCurrency)
            }
        }.flatMap{$0}.set
    }
}
