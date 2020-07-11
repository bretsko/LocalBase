

protocol LangLT: StrEnumT {
    
    /// each lang corresponds to several LangLID locales which in addition to lang have formatting options  (cyrillic, latic, etc)
    var langLIDs: Set<LangLID> {get}
    
    var countries: Set<CountryL> {get}
}

/// LangLID == LangL + formatting (cyrillic, latin, etc)
/// LangLID is locale, LangL is languages
/// example  https://ciklopea.com/blog/localization/should-you-localize-to-serbian-latin-or-to-serbian-cyrillic/
/// Language locales sorted by popularity
/// represents a language and different formatting options for diff areas in the wordl.
/// Language name can be translated into any lang
public enum LangL: Str, LangLT {
    
    //TODO: finish sorting, see below
    
    // sorted by popularity according to https://en.wikipedia.org/wiki/List_of_languages_by_total_number_of_speakers
    
    
    //TODO: consider sorting this list by country, groups (European, Asian?)
    
    /// English countries: US, UK, Australia, Canada, New Zealand
    /// Max speakers are in: India, Pakistan, Nigeria, Philippines, Tanzania, Kenya, South Africa, Cameroon, Sudan, Uganda, Ghana, Malawi, Zambia, Zimbabwe, South Sudan, Rwanda, Burundi (See the full list)
    /// Official: Antigua and Barbuda, Australia, Bahamas, Barbados, Botswana, Brunei, Burundi, Cameroon, Canada, Dominica, Eswatini, Fiji, Gambia, Ghana, Grenada, Guyana, Hong Kong, India, Ireland, Jamaica, Kenya, Kiribati, Lesotho, Liberia, Malawi, Malta, Marshall Islands, Mauritius, Namibia, Nauru, New Zealand, Nigeria, Pakistan, Palau, Papua New Guinea, Philippines, Rwanda, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Samoa, Seychelles, Sierra Leone, Singapore, Solomon Islands, Somaliland, South Africa, South Sudan, Sudan, Tanzania, Tonga, Trinidad and Tobago, Tuvalu, Uganda, UK, United States, Vanuatu, Zambia
    /// Regional language in: Honduras in the Bay Islands, Micronesia except for Kosrae, Netherlands in Saint Maarten, Saint Eustatius and Saba islands
    /// Widely spoken in: Cyprus, Ethiopia, Indonesia, Israel, Palestine, Switzerland
    /// Total speakers: 1.268 billion
    case english
    
    /// Name: Mandarin Chinese (incl. Standard Chinese)
    /// Max speakers are in: China, Singapore, Taiwan*
    /// Total speakers: 1.120 billion
    case chinese
    
    /// Max speakers are in: India (known as Hindi), Pakistan (known as Urdu, Fiji)
    /// Total speakers: 637.3 million
    case hindi
    
    /// Max speakers are in: Spain, Mexico, Colombia, Argentina, Equatorial Guinea  (See the full list)
    /// Total speakers:  537.9 million
    case spanish
    
    
    /// Max speakers are in: France, Canada, Belgium, Switzerland, Madagascar, Monaco, Haiti  (See the full list)
    /// Total speakers: 276.6 million
    case french
    
    /// Name: Standard Arabic
    /// Max speakers are in: Egypt, Sudan, Algeria, Iraq, Morocco, Saudi Arabia  (See the full list)
    /// arabicNajdi
    /// Total speakers: 274.0 million
    case arabic
    
    /// Max speakers are in: Bangladesh, India, Bengali
    /// Total speakers: 265.2 million
    case bengali
    
    /// Max speakers are in: Russia, Kazakhstan, Belarus, Kyrgyzstan
    /// Total speakers: 258.0 million
    case russian
    
    
    /// Max speakers are in: Portugal, Brazil, Mozambique, Angola, Macau, East Timor  (See the full list)
    /// Total speakers: 252.2 million
    case portuguese
    
    
    /// Max speakers are in: Indonesia (known as Indonesian), Malaysia, Singapore, Brunei
    /// Total speakers: 199.0 million
    case indonesian
    
    
    /// Max speakers are in: Pakistan, India,
    /// Total speakers:170.6 million
    case urdu
    
    
    /// Max speakers are in: Germany, Austria, Switzerland, Belgium, Luxembourg, Liechtenstein
    /// Total speakers: 131.6 million
    /// Other locales: swissGerman
    case german
    
    /// Max speakers are in: Japan
    /// Total speakers: 126.4 million
    case japanese
    
    
    /// Max speakers are in: Tanzania, Kenya, Uganda, Rwanda, DR Congo
    /// Official: Tanzania, DR Congo, Kenya, Rwanda, Uganda, Sudan South Sudan
    /// Recognised minority: Mozambique, Burundi, Oman, Somalia
    /// Total speakers: 98.5 million
    case swahili
    
    /// Max speakers are in: India
    /// Total speakers: 95.3 million
    case marathi
    
    
    /// Max speakers are in: Serbia, Croatia, Bosnia and Herzegovina, Montenegro, Kosovo*
    /// Total speakers:
    /// Other locales: serbianCyrl serbianLatin
    case serbian
    
    /// Max speakers are in: Italy, Switzerland, San Marino, Vatican City
    /// Total speakers:
    case italian
    
    
    /// Max speakers are in: Botswana, South Africa, Zimbabwe, Namibia
    /// Total speakers:
    // case
    
    /// Max speakers are in: Albania, Kosovo*, North Macedonia
    /// Total speakers:
    //case albanian

    
    /// Max speakers are in: Netherlands, Belgium, Suriname
    /// Total speakers:
    // case dutch
    
    /// Max speakers are in: Iran, Afghanistan (known as Dari), Tajikistan (known as Tajik)
    /// Total speakers:
    // case
    
    /// Max speakers are in: Peru, Bolivia, Ecuador
    /// Total speakers:
    // case
    
    /// Max speakers are in: Sri Lanka, Singapore, India
    /// Total speakers:
    // case
    
    /// Max speakers are in: South Africa, Lesotho, Zimbabwe
    /// Total speakers:
    // case
    
    
    //MARK: - not sorted
    
    
    case afrikaans
    case aghem
    case amharic
    
    case armenian
    case assamese
    case asu
    
    /// azerCyrillic azerLatn
    case azer
    
    
    case bafia
    case bambara
    case basaa
    case basque
    case belarusian
    case bemba
    case bena
    case bodo
    
    /// bosnianCyrillic bosnianLatn
    case bosnian
    
    case breton
    case bulgarian
    case burmese
    case cantonese
    case catalan
    case centralAtlasTamazight
    case chakma
    case cherokee
    case chiga
    
    
    
    case colognian
    case cornish
    case croatian
    case czech
    case danish
    case duala
    case dutch
    case dzongkha
    
    
    case embu
    case esperanto
    case estonian
    case ewe
    case ewondo
    case faroese
    case filipino
    case finnish
    case friulian
    case fulah
    case galician
    case ganda
    case georgian
    case greek
    case gujarati
    case gusii
    case hausa
    case hawaiian
    case hebrew
    case hungarian
    case icelandic
    case igbo
    case inariSami
    
    /// inuktitutUnifiedCanadianAboriginalSyllabics
    case inuktitut
    
    case irish
    case jolaFonyi
    case kabuverdianu
    case kabyle
    case kako
    case kalaallisut
    case kalenjin
    case kamba
    case kannada
    
    /// kashmiriArabic
    case kashmiri
    
    /// kazakhCyrl
    case kazakh
    
    case khmer
    case kikuyu
    case kinyarwanda
    case konkani
    case korean
    
    case koyraChiini
    case koyraboroSenni
    
    case kwasio
    
    /// kyrgyzCyrl
    case kyrgyz
    
    case lakota
    case langi
    case lao
    case latvian
    case lingala
    case lithuanian
    
    /// lowerSorbian, upperSorbian
    case sorbian
    
    case lubaKatanga
    case luo
    case luxembourgish
    case luyia
    case macedonian
    case machame
    case makhuwaMeetto
    case makonde
    case malagasy
    
    /// malayArabic malayLatn malayalam
    case malay
    
    case maltese
    case manx
    case masai
    case meru
    case meta
    
    /// mongolianCyrl
    case mongolian
    
    case morisyen
    case mundang
    case nama
    case nepali
    case ngiemboon
    case ngomba
    case northNdebele
    case northernSami
    
    /// norwegianBokml norwegianNynorsk
    case norwegian
    
    case nuer
    case nyankole
    case oriya
    case oromo
    case ossetic
    case pashto
    case persian
    case polish
    
    /// punjabiArabic punjabiGuru
    case punjabi
    
    case quechua
    case romanian
    case romansh
    case rombo
    case rundi
    case rwa
    case sakha
    case samburu
    case sango
    case sangu
    case scottishGaelic
    case sena
    
    
    case shambala
    case shona
    case sichuanYi
    case sinhala
    case slovak
    case slovenian
    case soga
    case somali
    case standardMoroccanTamazight
    case swedish
    
    /// tachelhitTifinagh
    case tachelhit
    
    case taita
    case tajik
    case tamil
    case tasawaq
    case telugu
    case teso
    case thai
    case tibetan
    case tigrinya
    case tongan
    
    /// Turkey
    case turkish
    
    case centralKurdish
    
    /// Turkmen Turkish
    case turkmen
    
    case ukrainian
    
    /// uyghurArabic
    case uyghur
    
    /// uzbekArabic uzbekCyrl uzbekLatin
    case uzbek
    
    /// vaiLatin
    case vai
    
    case vietnamese
    case vunjo
    case walser
    case welsh
    case westernFrisian
    case yangben
    case yiddish
    case yoruba
    case zarma
    case zulu
    
    case abkhaz
}

