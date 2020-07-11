
protocol RegionLIDP: LIDT {
    
    /// mainly World
    //func regionName(in locale: LIDP) -> Str?
}

/// Current and geographical regions, like Europe
public enum RegionLID: Str, RegionLIDP {
    
    //Country: World, lang: English
    case englishWorld = "en_001"
    
    //Country: Europe, lang: English
    case englishEurope = "en_150"
    
    //Country: World, lang: arabic
    case arabicWorld = "ar_001"
    
    //Country: World, lang: yiddish
    case yiddishWorld = "yi_001"
    
    //Country: Latinoamérica, lang: español
    case spanishLatinAmerica = "es_419"
}
public extension RegionLID {
    
    var lid: LID {
        .region(self)
    }

    /// englishWorld - "World"
    /// englishEurope -  "Europe"
    /// spanishLatinAmerica -  Latinoamérica"
    /// yiddishWorld, arabicWorld
    func regionName(translatedInto lid: LIDP) -> Str? {
        lid.transl(regionCode: regionCode!)
    }
    
    /// englishWorld - "English"
    /// englishEurope - "English"
    /// spanishLatinAmerica - "español
    /// yiddishWorld, arabicWorld
    // func langName(translatedInto lid: LangLID) -> Str {

    
    /// for all these, currencyName == nil
    /// only 5 cases:
    /// englishWorld - "English", "World"
    /// englishEurope - "English", "Europe"
    /// spanishLatinAmerica - "español, Latinoamérica"
    /// yiddishWorld, arabicWorld
    static var geoRegions: Set<RegionLID> {
        [ .englishWorld,
          .englishEurope,
          .spanishLatinAmerica,
          .arabicWorld,
          .yiddishWorld ].set
    }
    
    /// currencyName == nil - for all these, but language is present
    /// only 4 cases:
    /// englishWorld - "English", "World"
    /// englishEurope - "English", "Europe"
    /// spanishLatinAmerica - "español, Latinoamérica"
    /// yiddishWorld, arabicWorld
    var isGeoRegion: Bool {
        Self.geoRegions.contains(self)
    }
}
