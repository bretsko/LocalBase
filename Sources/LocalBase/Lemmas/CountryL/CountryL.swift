

protocol CountryLT: StrEnumT {
    
    /// each country corresponds to several CountryLID locales which in addition to country have formatting options (cyrillic, latic, etc)
    var countryLIDs: Set<CountryLID> {get}
    
    var langs: Set<LangL> {get}
}


/// Country locales, sorted by population
/// Each has countryName and lang
/// Both country and language name can be translated into any lang
/// The rawValue contains locale identifiers, representing ISO 639-1 language codes or combined ISO 639-1 language codes and ISO 3166-1 regional codes (for example, en_US)
public enum CountryL: Str, CountryLT {
        
    //TODO: finish sorting, see below

    ///  Official lang: chinese
    ///  Top: turkish (ArabicChina), Macao / MacauSarChina, HongKongSarChina, SimplifiedHongKongSarChina, SimplifiedMacauSarChina
    case China
    
    ///  Official lang: english hindi
    ///  Tpp: telugu oriya konkani punjabi tamil tibetan bodo nepali gujarati, kannada, urdu, assamese, kashmiri (ArabicIndia)
    case India
    
    ///  Official lang: english
    ///  Top: spanish, cherokee hawaiian lakota, UnitedStatesComputer
    case UnitedStates = "United States"
    
    ///  Official lang: indonesian
    case Indonesia
    
    ///  Official lang:  urdu, punjabi(ArabicPakistan), english
    case Pakistan
    
    /// Official lang: portuguese
    case Brazil
    
    /// Official lang: igbo, yoruba, hausa
    case Nigeria
    
    /// Official lang: bengali
    case Bangladesh
    
    /// Official lang: russian, Ukrainian ossetic sakhaRussia
    case Russia
    
    /// Official lang: spanish
    case Mexico
    
    /// Official lang: japanese
    case Japan
    
    /// Official lang: oromo amharic somali, tigrinya
    case Ethiopia
    
    /// Official lang: filipino, spanish, english
    case Philippines
    
    /// Official lang: arabic
    case Egypt
    
    /// Official lang: vietnamese
    case Vietnam

    
    /// Official lang: german colognian lowerSorbian upperSorbian
    case Germany
    
    /// Official lang: turkish
    case Turkey
    
    /// Official lang: persian centralKurdishIran
    case Iran
    
    /// Official lang: thai
    case Thailand
    
    /// Official lang: english, welsh, gaelic
    case UnitedKingdom = "United Kingdom"
    
    /// Official lang: french, english, catalan, swiss (GermanFrance)
    case France
    
    /// Official lang: italian, english, friulian catalan
    case Italy
    
    /// Official lang: afrikaans hausa zulu english
    case SouthAfrica = "South Africa"
    
    /// Official lang: swahili english sangu rwa shambala masai makonde machame langi bena asu vunjo rombo
    case Tanzania
    
    /// in US it's still called Burma (todo)
    /// Official lang: burmese
    case Myanmar
    
    /// Official lang: english italian french somali, swahili  luo luyia meru masai samburu taita embu oromo teso kamba kalenjin gusii
    case Kenya
    
    /// Official lang: korean
    case SouthKorea = "South Korea"
    
    /// Official lang: spanish
    case Colombia
    
    /// Official lang: spanish, catalan, english, basque? galician?
    case Spain
    
    /// Official lang: spanish
    case Argentina
    
    /// Official lang: ganda chiga teso soga nyankole swahili
    case Uganda
    
    /// Official lang: russian, Ukrainian
    case Ukraine
    
    /// Official lang: arabic kabyle
    case Algeria
    
    /// arabic, arabicSouthSudan, nuer, english
    case Sudan
    
    /// Official lang: arabic, centralKurdishIraq
    case Iraq
    
    /// Official lang: pashto persian
    case Afghanistan
    
    /// Official lang: polish
    case Poland
    
    /// Official lang: english french
    case Canada
    
    /// Official lang: arabic, tachelhit, tachelhitTifinaghMorocco, centralAtlasTamazightMorocco standardMoroccanTamazightMorocco
    case Morocco
    
    /// Official lang: arabic
    case SaudiArabia = "Saudi Arabia"
    
    /// Official lang: uzbek, uzbekLatinUzbekistan, uzbekArabicAfghanistan
    case Uzbekistan
    
    /// Official lang: quechua spanish
    case Peru
    
    /// Official lang: malay, thai, ArabicMalaysia
    case Malaysia
    
    /// Official lang: lingala, portuguese
    case Angola
    
    /// Official lang: sena portuguese makhuwa
    case Mozambique
    
    /// Official lang: arabic
    case Yemen
    
    /// Official lang: ewe, akan, hausa, english
    case Ghana
    
    /// Official lang: nepali
    case Nepal
    
    /// Official lang: spanish
    case Venezuela
    
    /// Official lang: Malagasy French
    case Madagascar
    
    /// Official lang: bafia basaa ewondo, mundang fulah  duala aghem yangben ngomba ngiemboon  meta kwasio kako
    case Cameroon
    
    /// Official lang: french
    case IvoryCoast = "Ivory Coast"
    
    /// Official lang: korean
    case NorthKorea = "North Korea"
    
    /// Official lang: english
    case Australia
    
    /// Official lang: chinese
    case Taiwan
    
    /// Official lang: english french zarma tasawaq yoruba hausa
    case Niger
    
    /// Official lang: thai sinhala
    case SriLanka = "Sri Lanka"
    
    /// Official lang: french
    case BurkinaFaso = "Burkina Faso"
    
    /// Official lang: bambara, french koyraChiini, koyraboroSenni,
    case Mali
    
    /// Official lang: romanian
    case Romania
    
    /// Official lang: spanish
    case Chile
    
    /// Official lang: english
    case Malawi
    
    /// Official lang: russian, kazakh
    case Kazakhstan
    
    /// Official lang: bemba
    case Zambia
    
    /// Official lang: spanish
    case Guatemala
    
    /// Official lang: quechua spanish
    case Ecuador
    
    /// Official lang: dutch westernFrisianNetherlands CaribbeanNetherlands
    case Netherlands
    
    /// Official lang: arabic
    case Syria
    
    /// Official lang:
    case Cambodia
    
    /// Official lang: jolaFonyi fulah
    case Senegal
    
    /// Official lang: arabic
    case Chad
    
    /// Official lang: somali, arabic
    case Somalia
    
    /// Official lang: shona, northNdebeleZimbabwe
    case Zimbabwe
    
    /// Official lang: fulah
    case Guinea
    
    /// Official lang:
    case Rwanda
    
    /// Official lang: yoruba
    case Benin
    
    /// Official lang: arabic
    case Tunisia
    
    /// Official lang: dutch, french, english
    case Belgium
    
    /// Official lang: quechua, spanish
    case Bolivia
    
    /// Official lang: spanish
    case Cuba
    
    /// Official lang: french, Haitian Creole
    case Haiti
    
    /// Official lang: english
    case SouthSudan = "South Sudan"
    
    /// Official lang: rundi
    case Burundi
    
    /// Official lang: spanish
    case DominicanRepublic = "Dominican Republic"
    
    /// Official lang: czech, catalan
    case CzechRepublic = "Czech Republic"
    
    /// Official lang: greek, english
    case Greece
    
    /// Official lang: portuguese
    case Portugal
    
    /// Official lang: arabic
    case Jordan
    
    /// Official lang: azer, azerCyrillicAzerbaijan
    case Azerbaijan
    
    /// Official lang: swedish, swedishLandIslands, northernSami
    case Sweden
    
    /// Official lang: arabic
    case UnitedArabEmirates = "United Arab Emirates"
    
    /// Official lang: spanish
    case Honduras
    
    /// Official lang: hungarian, english, german
    case Hungary
    
    /// Official lang: russian, belarussian
    case Belarus
    
    /// Official lang: tajik
    case Tajikistan
    
    /// Official lang: german
    case Austria
    
    /// Official lang: Tok Pisin, Hiri Motu, english
    case PapuaNewGuinea = "Papua New Guinea"
    
    /// Official lang: serbian LatinSerbia
    case Serbia
    
    /// Official lang: swiss romansh italian German walserSwitzerland german
    case Switzerland
    
    /// Official lang: arabic hebrew, english
    case Israel
    
    /// Official lang: ewe
    case Togo
    
    /// Official lang: english
    case SierraLeone = "Sierra Leone"
    
    /// Official lang: China
    case HongKong = "Hong Kong"
    
    /// Official lang: lao
    case Laos
    
    /// Official lang: spanish
    case Paraguay
    
    /// Official lang: bosnian
    case Bulgaria
    
    /// Official lang: arabic
    case Lebanon
    
    /// Official lang: arabic
    case Libya
    
    /// Official lang: spanish
    case Nicaragua
    
    /// Official lang: spanish
    case ElSalvador = "El Salvador"
    
    /// Official lang: russian, kyrgyz
    case Kyrgyzstan
    
    /// Official lang: Turkmen Turkish
    case Turkmenistan
    
    /// Official lang: chinese, thai, malay
    case Singapore
    
    /// Official lang: danish
    case Denmark
    
    /// Official lang: finnish, swedish, northernSami, inari (SamiFinland), english
    case Finland
    
    /// Official lang: slovak
    case Slovakia
    

    /// Democratic Republic of the Congo (DRC), Congo-Kinshasa (CongoKinshasa), the DROC, the Congo and historically Zaire,
    /// Official lang: french
    /// Also used: Lingala Kikongo Swahili Tshiluba
    case DRCongo = "DR Congo"
    
    /// The Republic of the Congo, Congo-Brazzaville, the Congo Republic, or simply either Congo or the Congo
    /// Official lang: french,
    /// Also used: Kituba Kikongo Lingala
    case CongoBrazzaville
    

    
    /// Official lang: norwegian (Bokml Nynorsk), northernSami SvalbardJanMayen
    case Norway
    
    /// Official lang: spanish
    case CostaRica = "Costa Rica"
    
    /// Official lang: arabic
    case Palestine
    
    /// Official lang: arabic
    case Oman
    
    /// Official lang: vai
    case Liberia
    
    /// Official lang: irish, english
    case Ireland
    
    /// Official lang: english
    case NewZealand = "New Zealand"
    
    /// Official lang: lingala, sango, french
    case CentralAfricanRepublic = "Central African Republic"
    
    /// Official lang: arabic fulah
    case Mauritania
    
    /// Official lang: spanish
    case Panama
    
    /// Official lang: arabic
    case Kuwait
    
    /// Official lang: croatian
    case Croatia
    
    /// Official lang: romanian, russian
    case Moldova
    
    /// Official lang: georgian ossetic
    case Georgia
    
    /// Official lang: tigrinya arabic
    case Eritrea
    
    /// Official lang: spanish
    case Uruguay
    
    /// Official lang:
    case BosniaAndHerzegovina = "Bosnia and Herzegovina"
    
    /// Official lang: Mongolian
    case Mongolia
    
    /// Official lang: armenian
    case Armenia
    
    /// Official lang:
    case Jamaica
    
    /// Official lang: spanish
    case PuertoRico = "Puerto Rico"
    
    /// Official lang: albanian
    case Albania
    
    /// Official lang: arabic
    case Qatar
    
    /// Official lang:
    case Lithuania
    
    /// Official lang: afrikaans
    case Namibia
    
    /// Official lang:
    case Gambia
    
    /// Official lang:
    case Botswana
    
    /// Official lang:
    case Gabon
    
    /// Official lang:
    case Lesotho
    
    /// Official lang:
    //    case North Macedonia
    
    /// Official lang: slovenian
    case Slovenia
    
    /// Official lang:
    //    case Guinea-Bissau
    
    /// Official lang:
    case Latvia
    
    /// Official lang: arabic
    case Bahrain
    
    /// Official lang:
    //    case Trinidad and Tobago
    //    case Equatorial Guinea
    
    /// Official lang: estonian, english
    case Estonia
    
    //    case East Timor
    
    /// Official lang: morisyen
    case Mauritius
    
    /// Official lang: greek, turkish, english
    case Cyprus
    
    // case Eswatini
    
    /// Official lang: arabic, somali, english
    case Djibouti
    
    /// Official lang:
    case Fiji
    //    case Réunion (France)
    //    case Comoros
    //    case Guyana
    
    /// Official lang: dzongkha
    case Bhutan
    
    case Abkhazia
    
    //TODO: add more countries, sorted by population
    // uncomment then remove duplicates below
    
    //    case Solomon Islands
    //    case Macau/Macao (China)
    //    case Montenegro
    //    case Luxembourg
    //    case Western Sahara
    //    case Suriname
    //    case Cape Verde
    //    case Maldives
    //    case Guadeloupe (France)
    //    case Malta
    //    case Brunei
    //    case Belize
    //    case Bahamas
    //    case Martinique (France)
    //    case Iceland
    //    case Vanuatu
    //    case Barbados
    //    case New Caledonia (France)
    //    case French Guiana (France)
    //    case French Polynesia (France)
    //    case Mayotte (France)
    //    case São Tomé and Príncipe
    //    case Western Samoa
    //    case Saint Lucia
    //    case Channel Islands (United Kingdom)
    //    case Guam (United States)
    //    case Curaçao (Netherlands)
    //    case Kiribati
    //    case F.S. Micronesia
    //    case Grenada
    //    case Tonga
    //    case Saint Vincent and the Grenadines
    //    case Aruba (Netherlands)
    //    case U.S. Virgin Islands (United States)
    //    case Seychelles
    //    case Antigua and Barbuda
    //    case Isle of Man (United Kingdom)
    //    case Andorra
    //    case Dominica
    //    case Cayman Islands (United Kingdom)
    //    case Bermuda (United Kingdom)
    //    case Marshall Islands
    //    case Greenland (Denmark)
    //    case Northern Mariana Islands (United States)
    //    case American Samoa (United States)
    //    case Saint Kitts and Nevis
    //    case Faroe Islands (Denmark)
    //    case Sint Maarten (Netherlands)
    //    case Monaco
    //    case Turks and Caicos Islands (United Kingdom)
    //    case Liechtenstein
    //    case San Marino
    //    case Gibraltar (United Kingdom)
    //    case British Virgin Islands (United Kingdom)
    //    case Caribbean Netherlands (Netherlands)
    //    case Palau
    //    case Cook Islands (New Zealand)
    //    case Anguilla (United Kingdom)
    //    case Tuvalu
    //    case Wallis and Futuna (France)
    //    case Nauru
    //    case Saint Helena (United Kingdom)[y]
    //    case Saint Pierre and Miquelon (France)
    //    case Montserrat (United Kingdom)
    //    case Falkland Islands (United Kingdom)
    //    case Niue (New Zealand)
    //    case Tokelau (New Zealand)
    //    case Vatican City
    
    /// arabic
    case Comoros
    
    /// arabic
    case PalestinianTerritories
    
    /// arabic
    case WesternSahara
    
    /// catalan
    case Andorra
    
    //MARK: -
    
    case Aruba
    
    case Curacao
    
    case SintMaarten
    case Suriname
    
    /// faroese
    case FaroeIslands
    
    /// german, swiss (GermanLiechtenstein)
    case Liechtenstein
    
    // icelandic
    case Iceland
    
    /// italian
    case SanMarino
    
    /// german, french, english italian
    case Luxembourg
    
    /// malay, ArabicBrunei
    case Brunei
    
    //case alamIndia
    
    case Malta
    
    /// portuguese
    case GuineaBissau
    
    /// Macao
    /// chinese, portuguese
    case MacauSarChina
    
    /// portuguese
    case SoTomPrncipe
    
    /// East Timor 
    /// portuguese
    case TimorLeste
    
    //  bosnian, serbian, croatian, CyrillicBosniaHerzegovina, LatinBosniaHerzegovina, english
    case BosniaHerzegovina
    
    /// LatinMontenegro
    case Montenegro
    
    /// spanish
    case CanaryIslands
    
    case CeutaMelilla
    
    /// spanish
    case EquatorialGuinea
    
    /// tongan
    case Tonga
    
    /// albanian serbian, LatinKosovo
    case Kosovo
    
    /// albanian
    case Macedonia
    
    /// danish kalaallisut
    case Greenland
    

    
    /// kabuverdianu portuguese
    case CapeVerde
    

    
    /// manx
    case IsleOfMan
    
    /// vai
    case LatinLiberia
    
    
    //add ?
    //case AkrotiriAndDhekelia = "Akrotiri and Dhekelia"
    //case Curaao
    /// sichuan
    //case YiChina
    
    /// inuktitut
    //case UnifiedCanadianAboriginalSyllabicsCanada
}
