


public extension CountryL {
    
    /// each country corresponds to several CountryLID locales which in addition to country have formatting options (cyrillic, latic, etc)
    var countryLIDs: Set<CountryLID> {
        
        let r: Array<CountryLID> = Array()
        
        //fatalError()
//        switch self {
//        case .China:
//             r = [ .aa ]
//            
//        case .India:
//             r = [ .aa ]
//            
//        case .UnitedStates:
//             r = [ .aa ]
//            
//        case .Indonesia:
//             r = [ .aa ]
//            
//        case .Pakistan:
//             r = [ .aa ]
//            
//        case .Brazil:
//             r = [ .aa ]
//            
//        case .Nigeria:
//             r = [ .aa ]
//            
//        case .Bangladesh:
//             r = [ .aa ]
//            
//        case .Russia:
//             r = [ .aa ]
//            
//        case .Mexico:
//             r = [ .aa ]
//            
//        case .Japan:
//             r = [ .aa ]
//            
//        case .Ethiopia:
//             r = [ .aa ]
//            
//        case .Philippines:
//             r = [ .aa ]
//            
//        case .Egypt:
//             r = [ .aa ]
//            
//        case .Vietnam:
//             r = [ .aa ]
//            
//        case .DRCongo:
//             r = [ .aa ]
//            
//        case .Germany:
//             r = [ .aa ]
//            
//        case .Turkey:
//             r = [ .aa ]
//            
//        case .Iran:
//             r = [ .aa ]
//            
//        case .Thailand:
//             r = [ .aa ]
//            
//        case .UnitedKingdom:
//             r = [ .aa ]
//            
//        case .France:
//             r = [ .aa ]
//            
//        case .Italy:
//             r = [ .aa ]
//            
//        case .SouthAfrica:
//             r = [ .aa ]
//            
//        case .Tanzania:
//             r = [ .aa ]
//            
//        case .Myanmar:
//             r = [ .aa ]
//            
//        case .Kenya:
//             r = [ .aa ]
//            
//        case .SouthKorea:
//             r = [ .aa ]
//            
//        case .Colombia:
//             r = [ .aa ]
//            
//        case .Spain:
//             r = [ .aa ]
//            
//        case .Argentina:
//             r = [ .aa ]
//            
//        case .Uganda:
//             r = [ .aa ]
//            
//        case .Ukraine:
//             r = [ .aa ]
//            
//        case .Algeria:
//             r = [ .aa ]
//            
//        case .Sudan:
//             r = [ .aa ]
//            
//        case .Iraq:
//             r = [ .aa ]
//            
//        case .Afghanistan:
//             r = [ .aa ]
//            
//        case .Poland:
//             r = [ .aa ]
//            
//        case .Canada:
//             r = [ .aa ]
//            
//        case .Morocco:
//             r = [ .aa ]
//            
//        case .SaudiArabia:
//             r = [ .aa ]
//            
//        case .Uzbekistan:
//             r = [ .aa ]
//            
//        case .Peru:
//             r = [ .aa ]
//            
//        case .Malaysia:
//             r = [ .aa ]
//            
//        case .Angola:
//             r = [ .aa ]
//            
//        case .Mozambique:
//             r = [ .aa ]
//            
//        case .Yemen:
//             r = [ .aa ]
//            
//        case .Ghana:
//             r = [ .aa ]
//            
//        case .Nepal:
//             r = [ .aa ]
//            
//        case .Venezuela:
//             r = [ .aa ]
//            
//        case .Madagascar:
//             r = [ .aa ]
//            
//        case .Cameroon:
//             r = [ .aa ]
//            
//        case .IvoryCoast:
//             r = [ .aa ]
//            
//        case .NorthKorea:
//             r = [ .aa ]
//            
//        case .Australia:
//             r = [ .aa ]
//            
//        case .Taiwan:
//             r = [ .aa ]
//            
//        case .Niger:
//             r = [ .aa ]
//            
//        case .SriLanka:
//             r = [ .aa ]
//            
//        case .BurkinaFaso:
//             r = [ .aa ]
//            
//        case .Mali:
//             r = [ .aa ]
//            
//        case .Romania:
//             r = [ .aa ]
//            
//        case .Chile:
//             r = [ .aa ]
//            
//        case .Malawi:
//             r = [ .aa ]
//            
//        case .Kazakhstan:
//             r = [ .aa ]
//            
//        case .Zambia:
//             r = [ .aa ]
//            
//        case .Guatemala:
//             r = [ .aa ]
//            
//        case .Ecuador:
//             r = [ .aa ]
//            
//        case .Netherlands:
//             r = [ .aa ]
//            
//        case .Syria:
//             r = [ .aa ]
//            
//        case .Cambodia:
//             r = [ .aa ]
//            
//        case .Senegal:
//             r = [ .aa ]
//            
//        case .Chad:
//             r = [ .aa ]
//            
//        case .Somalia:
//             r = [ .aa ]
//            
//        case .Zimbabwe:
//             r = [ .aa ]
//            
//        case .Guinea:
//             r = [ .aa ]
//            
//        case .Rwanda:
//             r = [ .aa ]
//            
//        case .Benin:
//             r = [ .aa ]
//            
//        case .Tunisia:
//             r = [ .aa ]
//            
//        case .Belgium:
//             r = [ .aa ]
//            
//        case .Bolivia:
//             r = [ .aa ]
//            
//        case .Cuba:
//             r = [ .aa ]
//            
//        case .Haiti:
//             r = [ .aa ]
//            
//        case .SouthSudan:
//             r = [ .aa ]
//            
//        case .Burundi:
//             r = [ .aa ]
//            
//        case .DominicanRepublic:
//             r = [ .aa ]
//            
//        case .CzechRepublic:
//             r = [ .aa ]
//            
//        case .Greece:
//             r = [ .aa ]
//            
//        case .Portugal:
//             r = [ .aa ]
//            
//        case .Jordan:
//             r = [ .aa ]
//            
//        case .Azerbaijan:
//             r = [ .aa ]
//            
//        case .Sweden:
//             r = [ .aa ]
//            
//        case .UnitedArabEmirates:
//             r = [ .aa ]
//            
//        case .Honduras:
//             r = [ .aa ]
//            
//        case .Hungary:
//             r = [ .aa ]
//            
//        case .Belarus:
//             r = [ .aa ]
//            
//        case .Tajikistan:
//             r = [ .aa ]
//            
//        case .Austria:
//             r = [ .aa ]
//            
//        case .PapuaNewGuinea:
//             r = [ .aa ]
//            
//        case .Serbia:
//             r = [ .aa ]
//            
//        case .Switzerland:
//             r = [ .aa ]
//            
//        case .Israel:
//             r = [ .aa ]
//            
//        case .Togo:
//             r = [ .aa ]
//            
//        case .SierraLeone:
//             r = [ .aa ]
//            
//        case .HongKong:
//             r = [ .aa ]
//            
//        case .Laos:
//             r = [ .aa ]
//            
//        case .Paraguay:
//             r = [ .aa ]
//            
//        case .Bulgaria:
//             r = [ .aa ]
//            
//        case .Lebanon:
//             r = [ .aa ]
//            
//        case .Libya:
//             r = [ .aa ]
//            
//        case .Nicaragua:
//             r = [ .aa ]
//            
//        case .ElSalvador:
//             r = [ .aa ]
//            
//        case .Kyrgyzstan:
//             r = [ .aa ]
//            
//        case .Turkmenistan:
//             r = [ .aa ]
//            
//        case .Singapore:
//             r = [ .aa ]
//            
//        case .Denmark:
//             r = [ .aa ]
//            
//        case .Finland:
//             r = [ .aa ]
//            
//        case .Slovakia:
//             r = [ .aa ]
//            
//        case .Congo:
//             r = [ .aa ]
//            
//        case .Norway:
//             r = [ .aa ]
//            
//        case .CostaRica:
//             r = [ .aa ]
//            
//        case .Palestine:
//             r = [ .aa ]
//            
//        case .Oman:
//             r = [ .aa ]
//            
//        case .Liberia:
//             r = [ .aa ]
//            
//        case .Ireland:
//             r = [ .aa ]
//            
//        case .NewZealand:
//             r = [ .aa ]
//            
//        case .CentralAfricanRepublic:
//             r = [ .aa ]
//            
//        case .Mauritania:
//             r = [ .aa ]
//            
//        case .Panama:
//             r = [ .aa ]
//            
//        case .Kuwait:
//             r = [ .aa ]
//            
//        case .Croatia:
//             r = [ .aa ]
//            
//        case .Moldova:
//             r = [ .aa ]
//            
//        case .Georgia:
//             r = [ .aa ]
//            
//        case .Eritrea:
//             r = [ .aa ]
//            
//        case .Uruguay:
//             r = [ .aa ]
//            
//        case .BosniaAndHerzegovina:
//             r = [ .aa ]
//            
//        case .Mongolia:
//             r = [ .aa ]
//            
//        case .Armenia:
//             r = [ .aa ]
//            
//        case .Jamaica:
//             r = [ .aa ]
//            
//        case .PuertoRico:
//             r = [ .aa ]
//            
//        case .Albania:
//             r = [ .aa ]
//            
//        case .Qatar:
//             r = [ .aa ]
//            
//        case .Lithuania:
//             r = [ .aa ]
//            
//        case .Namibia:
//             r = [ .aa ]
//            
//        case .Gambia:
//             r = [ .aa ]
//            
//        case .Botswana:
//             r = [ .aa ]
//            
//        case .Gabon:
//             r = [ .aa ]
//            
//        case .Lesotho:
//             r = [ .aa ]
//            
//        case .Slovenia:
//             r = [ .aa ]
//            
//        case .Latvia:
//             r = [ .aa ]
//            
//        case .Bahrain:
//             r = [ .aa ]
//            
//        case .Estonia:
//             r = [ .aa ]
//            
//        case .Mauritius:
//             r = [ .aa ]
//            
//        case .Cyprus:
//             r = [ .aa ]
//            
//        case .Djibouti:
//             r = [ .aa ]
//            
//        case .Fiji:
//             r = [ .aa ]
//            
//        case .Bhutan:
//             r = [ .aa ]
//            
//        case .Comoros:
//             r = [ .aa ]
//            
//        case .PalestinianTerritories:
//             r = [ .aa ]
//            
//        case .WesternSahara:
//             r = [ .aa ]
//            
//        case .Andorra:
//             r = [ .aa ]
//            
//        case .Aruba:
//             r = [ .aa ]
//            
//        case .Curaao:
//             r = [ .aa ]
//            
//        case .SintMaarten:
//             r = [ .aa ]
//            
//        case .Suriname:
//             r = [ .aa ]
//            
//        case .FaroeIslands:
//             r = [ .aa ]
//            
//        case .Liechtenstein:
//             r = [ .aa ]
//            
//        case .Iceland:
//             r = [ .aa ]
//            
//        case .SanMarino:
//             r = [ .aa ]
//            
//        case .Luxembourg:
//             r = [ .aa ]
//            
//        case .Brunei:
//             r = [ .aa ]
//            
//        case .Malta:
//             r = [ .aa ]
//            
//        case .GuineaBissau:
//             r = [ .aa ]
//            
//        case .MacauSarChina:
//             r = [ .aa ]
//            
//        case .SoTomPrncipe:
//             r = [ .aa ]
//            
//        case .TimorLeste:
//             r = [ .aa ]
//            
//        case .BosniaHerzegovina:
//             r = [ .aa ]
//            
//        case .Montenegro:
//             r = [ .aa ]
//            
//        case .CanaryIslands:
//             r = [ .aa ]
//            
//        case .CeutaMelilla:
//             r = [ .aa ]
//            
//        case .EquatorialGuinea:
//             r = [ .aa ]
//            
//        case .Tonga:
//             r = [ .aa ]
//            
//        case .Kosovo:
//             r = [ .aa ]
//            
//        case .Macedonia:
//             r = [ .aa ]
//            
//        case .Greenland:
//             r = [ .aa ]
//            
//        case .UnifiedCanadianAboriginalSyllabicsCanada:
//             r = [ .aa ]
//            
//        case .CapeVerde:
//             r = [ .aa ]
//            
//        case .CongoBrazzaville:
//             r = [ .aa ]
//            
//        case .CongoKinshasa:
//             r = [ .aa ]
//            
//        case .IsleOfMan:
//             r = [ .aa ]
//            
//        case .YiChina:
//             r = [ .aa ]
//            
//        case .LatinLiberia:
//             r = [ .aa ]
//            
//        }

        return r.set
        
    }
}

public extension Array where Element == CountryL {
    
    var countryLIDs: Set<CountryLID> {
        map{$0.countryLIDs}.flatMap{$0}.set
    }
}

public extension Set where Element == CountryL {
    
    var countryLIDs: Set<CountryLID> {
        array.countryLIDs
    }
}
