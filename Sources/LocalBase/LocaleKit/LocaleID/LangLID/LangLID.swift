

protocol LangLIDT: LIDT {
        
    var langID: LangL {get}

    init?(_ langID: LangL)
}

/// Language locale represents a language and different formatting options for diff areas in the world.
/// Language name can be translated into any lang (total 214 cases)
/// The rawValue contains locale identifiers, representing ISO 639-1 language codes or combined ISO 639-1 language codes and ISO 3166-1 regional codes (for example, en-US)
public enum LangLID: Str, LangLIDT {
 
    // see https://unicode-org.github.io/cldr-staging/charts/37/summary/root.html
    
    //https://www.localeplanet.com/icu/qu-EC/index.html

    //TODO: add
    case arn, ceb, cv, gaa, gez, gn, ia, io, jbo, jv, kaj, kcg, kpe, ku, lrc, myv, mzn, nds, nqo, nso, ny, sat, sc, scn, ss, st, trv, wa, wuu, xh
    
    case hi_Latn = "hi-Latn"
    case kashmiriDeva = "ks-Deva"
    case mni_Beng = "mni-Beng"
    case mni_Mtei_IN = "mni-Mtei_IN"
    case punjabiAran = "pa-Aran"
    case satsatDeva = "sat-Deva"
    case satOlck = "sat-Olck"
    case sd_Deva = "sd-Deva"
    case urduArab = "ur-Arab"
    case yue_Hant = "yue-Hant"
    case yue_Hans = "yue-Hans"
    case mni_Mtei = "mni-Mtei"

    
    case afar = "aa"
    //Afar (Djibouti)     aa-DJ
    //Afar (Eritrea)     aa-ER
    //Afar (Ethiopia)     aa-ET
    
    case afrikaans = "af"
    //Afrikaans (Namibia)     af-NA
    //Afrikaans (South Africa)     af-ZA
    
    case aghem = "agq"
    //Aghem (Cameroon)     agq-CM
    
    case akan = "ak"
    //Akan (Ghana)     ak-GH
    
    case albanian = "sq"
    //Albanian (Albania)     sq-AL
    //Albanian (Macedonia FYRO)     sq-MK
    //Albanian (Kosovo)     sq-XK

    
    case alsatian = "gsw"
    //Alsatian (Switzerland)     gsw-CH
    //Alsatian (France)     gsw-FR
    //Alsatian (Liechtenstein)     gsw-LI
    
    case amharic = "am"
    //Amharic (Ethiopia)     am-ET
    
    
    //MARK: - arabic
    
    case arabic = "ar"
    //Arabic (World)     ar-001
    //Arabic (U.A.E.)     ar-AE
    //Arabic (Bahrain)     ar-BH
    //Arabic (Djibouti)     ar-DJ
    //Arabic (Algeria)     ar-DZ
    //Arabic (Egypt)     ar-EG
    //Arabic (Eritrea)     ar-ER
    //Arabic (Israel)     ar-IL
    //Arabic (Iraq)     ar-IQ
    //Arabic (Jordan)     ar-JO
    //Arabic (Comoros)     ar-KM
    //Arabic (Kuwait)     ar-KW
    //Arabic (Lebanon)     ar-LB
    //Arabic (Libya)     ar-LY
    //Arabic (Morocco)     ar-MA
    //Arabic (Mauritania)     ar-MR
    //Arabic (Oman)     ar-OM
    //Arabic (Palestinian Authority)     ar-PS
    //Arabic (Qatar)     ar-QA
    //Arabic (Saudi Arabia)     ar-SA
    //Arabic (Sudan)     ar-SD
    //Arabic (Somalia)     ar-SO
    //Arabic (South Sudan)     ar-SS
    //Arabic (Syria)     ar-SY
    //Arabic (Chad)     ar-TD
    //Arabic (Tunisia)     ar-TN
    //Arabic (Yemen)     ar-YE
    
    case arabicNajdi = "ars" // no country but has currency!
    
    
    //MARK: -
    
    case armenian = "hy"
    //Armenian (Armenia)     hy-AM
    
    case assamese = "as"
    // Assamese (India)     as-IN
    
    case asu = "asa"
    //Asu (Tanzania)     asa-TZ
    
    case asturian = "ast"
    //Asturian (Spain)     ast-ES
    
    
    /// Azeri
    case azer = "az"
    case azerCyrillic = "az-Cyrl"
    case azerLatn = "az-Latn"
    //Azeri (Cyrillic Azerbaijan)     az-Cyrl-AZ
    //Azeri (Latin Azerbaijan)     az-Latn-AZ
    
    
    case bashkir = "ba"
    //Bashkir (Russia)     ba-RU
    
    
    case bafia = "ksf"
    //Bafia (Cameroon)     ksf-CM
    
    case burmese = "my"
    //Burmese (Myanmar)     my-MM

    case basaa = "bas"
    //Basaa (Cameroon)     bas-CM

    case basque = "eu"
    //Basque (Basque)     eu-ES

    case belarusian = "be"
    //Belarusian (Belarus)     be-BY

    case bemba = "bem"
    //Bemba (Zambia)     bem-ZM

    case bena = "bez"
    //Bena (Tanzania)     bez-TZ

    case bengali = "bn"
    //Bengali (Bangladesh)     bn-BD
    //Bengali (India)     bn-IN
    
    
    case bambara  = "bm"
    
    /// Bamanankan (Latin)
    case bambaraLatn = "bm-Latn"
    
    //Bamanankan (Latin Mali)     bm-Latn-ML
    
    case breton = "br"
    //Breton (France)     br-FR
    
    case bodo = "brx"
    //Bodo (India)     brx-IN
    
    
    case blin = "byn"
    //Blin (Eritrea)     byn-ER
    
    
    case bosnian = "bs"
    case bosnianCyrillic = "bs-Cyrl"
    
    /// Bosnian (Latin)
    case bosnianLatn = "bs-Latn"
    //Bosnian (Cyrillic Bosnia and Herzegovina)     bs-Cyrl-BA
    //Bosnian (Latin Bosnia and Herzegovina)     bs-Latn-BA
    

    case bulgarian = "bg"
    //Bulgarian (Bulgaria)     bg-BG

    case cantonese = "yue"
    
    case catalan = "ca"
    //Catalan (Andorra)     ca-AD
    //Catalan (Catalan)     ca-ES
    //Valencian (Spain)     ca-ES-valencia
    //Catalan (France)     ca-FR
    //Catalan (Italy)     ca-IT
    
    /// centralAtlasTamazight
    case tamazight = "tzm"
    
    ///centralAtlasTamazight (Latin)
    case tamazightLatn = "tzm-Latn"
    //Tamazight (Latin Algeria)     tzm-Latn-DZ
    
    
    case centralKurdish = "ckb"
    case chakma = "ccp"
    
    case cherokee = "chr"
    //Cherokee (Cherokee)     chr-Cher
    //Cherokee (Cherokee United States)     chr-Cher-US
    
    case chechen = "ce"
    //Chechen (Russia)     ce-RU
    
    case corsican = "co"
    //Corsican (France)     co-FR
    
    case czech = "cs"
    //Czech (Czech Republic)     cs-CZ
    
    case churchSlavic = "cu"
    //Church Slavic (Russia)     cu-RU

    
    case chiga = "cgg"
    //Chiga (Uganda)     cgg-UG

    
    //MARK: - chinese
    
    case chinese = "zh"
    case chineseSimplified = "zh-Hans"
    case chineseTraditional = "zh-Hant"
    //Chinese (Simplified PRC)     zh-CN
    //Chinese (Simplified Han Hong Kong SAR)     zh-Hans-HK
    //Chinese (Simplified Han Macao SAR)     zh-Hans-MO
    //Chinese (Traditional Hong Kong S.A.R.)     zh-HK
    //Chinese (Traditional Macao S.A.R.)     zh-MO
    //Chinese (Simplified Singapore)     zh-SG
    //Chinese (Traditional Taiwan)     zh-TW
    //Chinese (Simplified) Legacy     zh-CHS
    //Chinese (Traditional) Legacy     zh-CHT
    
    
    //MARK: -
    
    // Ripuarian
    case colognian = "ksh"
    //Ripuarian (Germany)     ksh-DE
    
    case cornish = "kw"
    
    case croatian = "hr"
    //Croatian (Latin Bosnia and Herzegovina)     hr-BA
    //Croatian (Croatia)     hr-HR
    
    
    case danish = "da"
    //Danish (Denmark)     da-DK
    //Danish (Greenland)     da-GL
    
    case duala = "dua"
    //Duala (Cameroon)     dua-CM
    
    //case dari = "prs" // crashing
    //Dari (Afghanistan)     prs-AF
    
   
    //MARK: - dutch
    
    case dutch = "nl"
    //Dutch (Aruba)     nl-AW
    //Dutch (Belgium)     nl-BE
    //Dutch (Bonaire Sint Eustatius and Saba)     nl-BQ
    //Dutch (Curaçao)     nl-CW
    //Dutch (Netherlands)     nl-NL
    //Dutch (Suriname)     nl-SR
    //Dutch (Sint Maarten)     nl-SX
    
    
    //MARK: -
    
    case dzongkha = "dz"
    //Dzongkha (Bhutan)     dz-BT

    case divehi = "dv"
    //Divehi (Maldives)     dv-MV
    
   
    //MARK: - english
    
    case english = "en"
    //English (World)     en-001
    //English (Caribbean)     en-029
    //English (Europe)     en-150
    //English (Antigua and Barbuda)     en-AG
    //English (Anguilla)     en-AI
    //English (American Samoa)     en-AS
    //English (Austria)     en-AT
    //English (Australia)     en-AU
    //English (Barbados)     en-BB
    //English (Belgium)     en-BE
    //English (Burundi)     en-BI
    //English (Bermuda)     en-BM
    //English (Bahamas)     en-BS
    //English (Botswana)     en-BW
    //English (Belize)     en-BZ
    //English (Canada)     en-CA
    //English (Cocos (Keeling) Islands)     en-CC
    //English (Switzerland)     en-CH
    //English (Cook Islands)     en-CK
    //English (Cameroon)     en-CM
    //English (Christmas Island)     en-CX
    //English (Cyprus)     en-CY
    //English (Germany)     en-DE
    //English (Denmark)     en-DK
    //English (Dominica)     en-DM
    //English (Eritrea)     en-ER
    //English (Finland)     en-FI
    //English (Fiji)     en-FJ
    //English (Falkland Islands)     en-FK
    //English (Micronesia)     en-FM
    //English (United Kingdom)     en-GB
    //English (Grenada)     en-GD
    //English (Guernsey)     en-GG
    //English (Ghana)     en-GH
    //English (Gibraltar)     en-GI
    //English (Gambia)     en-GM
    //English (Guam)     en-GU
    //English (Guyana)     en-GY
    //English (Hong Kong)     en-HK
    //English (Indonesia)     en-ID
    //English (Ireland)     en-IE
    //English (Israel)     en-IL
    //English (Isle of Man)     en-IM
    //English (India)     en-IN
    //English (British Indian Ocean Territory)     en-IO
    //English (Jersey)     en-JE
    //English (Jamaica)     en-JM
    //English (Kenya)     en-KE
    //English (Kiribati)     en-KI
    //English (Saint Kitts and Nevis)     en-KN
    //English (Cayman Islands)     en-KY
    //English (Saint Lucia)     en-LC
    //English (Liberia)     en-LR
    //English (Lesotho)     en-LS
    //English (Madagascar)     en-MG
    //English (Marshall Islands)     en-MH
    //English (Macao SAR)     en-MO
    //English (Northern Mariana Islands)     en-MP
    //English (Montserrat)     en-MS
    //English (Malta)     en-MT
    //English (Mauritius)     en-MU
    //English (Malawi)     en-MW
    //English (Malaysia)     en-MY
    //English (Namibia)     en-NA
    //English (Norfolk Island)     en-NF
    //English (Nigeria)     en-NG
    //English (Netherlands)     en-NL
    //English (Nauru)     en-NR
    //English (Niue)     en-NU
    //English (New Zealand)     en-NZ
    //English (Papua New Guinea)     en-PG
    //English (Republic of the Philippines)     en-PH
    //English (Pakistan)     en-PK
    //English (Pitcairn Islands)     en-PN
    //English (Puerto Rico)     en-PR
    //English (Palau)     en-PW
    //English (Rwanda)     en-RW
    //English (Solomon Islands)     en-SB
    //English (Seychelles)     en-SC
    //English (Sudan)     en-SD
    //English (Sweden)     en-SE
    //English (Singapore)     en-SG
    //English (St Helena Ascension Tristan da Cunha)     en-SH
    //English (Slovenia)     en-SI
    //English (Sierra Leone)     en-SL
    //English (South Sudan)     en-SS
    //English (Sint Maarten)     en-SX
    //English (Swaziland)     en-SZ
    //English (Turks and Caicos Islands)     en-TC
    //English (Tokelau)     en-TK
    //English (Tonga)     en-TO
    //English (Trinidad and Tobago)     en-TT
    //English (Tuvalu)     en-TV
    //English (Tanzania)     en-TZ
    //English (Uganda)     en-UG
    //English (US Minor Outlying Islands)     en-UM
    //English (United States)     en-US
    //English (Saint Vincent and the Grenadines)     en-VC
    //English (British Virgin Islands)     en-VG
    //English (U.S. Virgin Islands)     en-VI
    //English (Vanuatu)     en-VU
    //English (Samoa)     en-WS
    //English (South Africa)     en-ZA
    //English (Zambia)     en-ZM
    //English (Zimbabwe)     en-ZW
    
  
    case edo = "bin"
    //Edo (Nigeria)     bin-NG
        
    //MARK: -
    
    case embu = "ebu"
    //Embu (Kenya)     ebu-KE

    case esperanto = "eo"
    //Estonian (Estonia)     et-EE
    //Esperanto (World)     eo-001
    
    case estonian = "et"
    
    //Ewe (Ghana)     ee-GH
    //Ewe (Togo)     ee-TG
    case ewe = "ee"
    
    case ewondo = "ewo"
    //Ewondo (Cameroon)     ewo-CM

    case faroese = "fo"
    //Faroese (Denmark)     fo-DK
    //Faroese (Faroe Islands)     fo-FO
    
    case filipino = "fil"
    //Filipino (Philippines)     fil-PH

    case finnish = "fi"
    //Finnish (Finland)     fi-FI
      
    
    //MARK: - french
    
    case french = "fr"
    //French (Caribbean)     fr-029
    //French (Belgium)     fr-BE
    //French (Burkina Faso)     fr-BF
    //French (Burundi)     fr-BI
    //French (Benin)     fr-BJ
    //French (Saint Barthélemy)     fr-BL
    //French (Canada)     fr-CA
    //French (Congo [DRC])     fr-CD
    //French (Central African Republic)     fr-CF
    //French (Congo)     fr-CG
    //French (Switzerland)     fr-CH
    //French (Ivory Coast)     fr-CI
    //French (Cameroon)     fr-CM
    //French (Djibouti)     fr-DJ
    //French (Algeria)     fr-DZ
    //French (France)     fr-FR
    //French (Gabon)     fr-GA
    //French (French Guiana)     fr-GF
    //French (Guinea)     fr-GN
    //French (Guadeloupe)     fr-GP
    //French (Equatorial Guinea)     fr-GQ
    //French (Haiti)     fr-HT
    //French (Comoros)     fr-KM
    //French (Luxembourg)     fr-LU
    //French (Morocco)     fr-MA
    //French (Monaco)     fr-MC
    //French (Saint Martin)     fr-MF
    //French (Madagascar)     fr-MG
    //French (Mali)     fr-ML
    //French (Martinique)     fr-MQ
    //French (Mauritania)     fr-MR
    //French (Mauritius)     fr-MU
    //French (New Caledonia)     fr-NC
    //French (Niger)     fr-NE
    //French (French Polynesia)     fr-PF
    //French (Saint Pierre and Miquelon)     fr-PM
    //French (Réunion)     fr-RE
    //French (Rwanda)     fr-RW
    //French (Seychelles)     fr-SC
    //French (Senegal)     fr-SN
    //French (Syria)     fr-SY
    //French (Chad)     fr-TD
    //French (Togo)     fr-TG
    //French (Tunisia)     fr-TN
    //French (Vanuatu)     fr-VU
    //French (Wallis and Futuna)     fr-WF
    //French (Mayotte)     fr-YT
    
    
    //MARK: -
    
    case friulian = "fur"
    //Friulian (Italy)     fur-IT
    
  

    //MARK: - fulah
    
    case fulah = "ff"
    //Fulah (Cameroon)     ff-CM
    //Fulah (Guinea)     ff-GN
    //Fulah (Latin)     ff-Latn
    //Fulah (Latin Senegal)     ff-Latn-SN
    //Fulah (Mauritania)     ff-MR
    //Fulah (Nigeria)     ff-NG
    
    
    case galician = "gl"
    //Galician (Galician)     gl-ES

    case ganda = "lg"
    //Ganda (Uganda)     lg-UG

    case georgian = "ka"
    
    
    //MARK: - german
    
    case german = "de"
    //German (Austria)     de-AT
    //German (Belgium)     de-BE
    //German (Switzerland)     de-CH
    //German (Germany)     de-DE
    //German (Liechtenstein)     de-LI
    //German (Luxembourg)     de-LU
    
    
    //MARK: -
    
    case greek = "el"
    case gujarati = "gu"
    case gusii = "guz"
    
    //case Guarani     gn
    //Guarani (Paraguay)     gn-PY
    
    //case Gujarati     gu
    //Gujarati (India)     gu-IN
    
    //case Gusii     guz
    //Gusii (Kenya)     guz-KE
    
    //case Georgian     ka
    //Georgian (Georgia)     ka-GE
    
    //case Greenlandic     kl
    //Greenlandic (Greenland)     kl-GL
    
    //case Greek     el
    //Greek (Cyprus)     el-CY
    //Greek (Greece)     el-GR
    
    
    //MARK: -
    
    case hausa = "ha"
    case hausaLatn = "ha-Latn"
    //Hausa (Latin Ghana)     ha-Latn-GH
    //Hausa (Latin Niger)     ha-Latn-NE
    //Hausa (Latin Nigeria)     ha-Latn-NG
    
    case hawaiian = "haw"
    //Hawaiian (United States)     haw-US
    

    case hebrew = "he"
    //Hebrew (Israel)     he-IL

    case hindi = "hi"
    //Hindi (India)     hi-IN

    case hungarian = "hu"
    //Hungarian (Hungary)     hu-HU

    
    //case Ibibio     ibb
    //Ibibio (Nigeria)     ibb-NG
    
 
    case icelandic = "is"

    case igbo = "ig"
    //Igbo (Nigeria)     ig-NG

    case inariSami = "smn"
    case indonesian = "id"
    //Indonesian (Indonesia)     id-ID
    
    //case isiXhosa     xh
    //isiXhosa (South Africa)     xh-ZA
    
    //case Koyraboro Senni     ses
    //Koyraboro Senni (Mali)     ses-ML

    //MARK: -
    
    //Interlingua     ia
    //Interlingua (World)     ia-001
    //Interlingua (France)     ia-FR
    
    case inuktitut = "iu"
    /// Inuktitut (Syllabics)
    case inuktitutUnifiedCanadianAboriginalSyllabics = "iu-Cans"
    //Inuktitut (Syllabics Canada)     iu-Cans-CA
    //Inuktitut (Latin)     iu-Latn
    //Inuktitut (Latin Canada)     iu-Latn-CA
    
    case irish = "ga"
    
    
    //MARK: -
    
    //case Irish     ga
    //Irish (Ireland)     ga-IE
    
    //case Icelandic     is
    //Icelandic (Iceland)     is-IS
    
    //case Japanese     ja
    //Japanese (Japan)     ja-JP
    
    //case Javanese     jv
    //Javanese (Javanese)     jv-Java
    //Javanese (Javanese Indonesia)     jv-Java-ID
    //Javanese (Latin)     jv-Latn
    //Javanese (Indonesia)     jv-Latn-ID
    
 
    case italian = "it"
    //Italian (Switzerland)     it-CH
    //Italian (Italy)     it-IT
    //Italian (San Marino)     it-SM
    
    
    case japanese = "ja"
    
    /// Jola-Fonyi
    case jolaFonyi = "dyo"
    //Jola-Fonyi (Senegal)     dyo-SN
 
    
    case kabuverdianu = "kea"
    //Kabuverdianu (Cabo Verde)     kea-CV

    case kabyle = "kab"
    //Kabyle (Algeria)     kab-DZ

    case kako = "kkj"
    //Kako (Cameroon)     kkj-CM

    case kalaallisut = "kl"
    
    case kalenjin = "kln"
    //Kalenjin (Kenya)     kln-KE

    case kamba = "kam"
    //Kamba (Kenya)     kam-KE
    
    //case K'iche'     quc
    //K'iche'     quc-Latn
    //K'iche' (Guatemala)     quc-Latn-GT
    
    
    //case Kinyarwanda     rw
    //Kinyarwanda (Rwanda)     rw-RW
    
    //case Kiswahili     sw
    
    //Kiswahili (Kenya)     sw-KE
    //Kiswahili (Tanzania)     sw-TZ
    //Kiswahili (Uganda)     sw-UG

    
    //case Kanuri     kr
    //Kanuri (Nigeria)     kr-NG
    
    
    //case Koyra Chiini     khq
    //Koyra Chiini (Mali)     khq-ML
    
    //case Kikuyu     ki
    //Kikuyu (Kenya)     ki-KE
    
    //case Kako     kkj

    
    case kannada = "kn"
    //Kannada (India)     kn-IN

    
    //MARK: -
    
    //case Central Kurdish     ku
    //Central Kurdish (Arabic)     ku-Arab
    //Central Kurdish (Iraq)     ku-Arab-IQ
    
    //Kurdish (Perso-Arabic Iran)     ku-Arab-IR
    //case Cornish     kw
    //Cornish (United Kingdom)     kw-GB
    
    //case Kyrgyz     ky
    //Kyrgyz (Kyrgyzstan)     ky-KG
    
    //case Kwasio     nmg
    //Kwasio (Cameroon)     nmg-CM

    
    case kashmiri = "ks"
    
    /// Kashmiri (Perso-Arabic)
    case kashmiriArabic = "ks-Arab"
    //Kashmiri (Perso-Arabic)     ks-Arab-IN
    //Kashmiri (Devanagari)     ks-Deva
    //Kashmiri (Devanagari India)     ks-Deva-IN
    
    
    case kazakh = "kk"
    case kazakhCyrl = "kk-Cyrl"
    //Kazakh (Kazakhstan)     kk-KZ

    case khmer = "km"
    //Khmer (Cambodia)     km-KH

    case kikuyu = "ki"
    case kinyarwanda = "rw"
    
    case konkani = "kok"
    //Konkani (India)     kok-IN

    
    case korean = "ko"
    //Korean (North Korea)     ko-KP
    //Korean (Korea)     ko-KR

    case koyraChiini = "khq"
    case koyraboroSenni = "ses"
    case kwasio = "nmg"
    case kyrgyz = "ky"
    case kyrgyzCyrl = "ky-Cyrl"
    
    
    case lakota = "lkt"
    
    case langi = "lag"
    
    case lao = "lo"
    //Lao (Lao P.D.R.)     lo-LA

    case latvian = "lv"
    //Latvian (Latvia)     lv-LV

    
    //MARK: -
    
    case lingala = "ln"
    //Lingala (Angola)     ln-AO
    //Lingala (Congo DRC)     ln-CD
    //Lingala (Central African Republic)     ln-CF
    //Lingala (Congo)     ln-CG
    
    
    //MARK: -
    
    case lithuanian = "lt"
    //Lithuanian (Lithuania)     lt-LT

    case lowerSorbian = "dsb"
    //Lower Sorbian (Germany)     dsb-DE
    
  
    case lubaKatanga = "lu"
    //Luba-Katanga (Congo DRC)     lu-CD
    

    case luo
    //Luo (Kenya)     luo-KE

    case luxembourgish = "lb"
    //Luxembourgish (Luxembourg)     lb-LU

    case luyia = "luy"
    //Luyia (Kenya)     luy-KE

    
    //case Latin     la
    //Latin (World)     la-001
    
    //case Langi     lag
    //Langi (Tanzania)     lag-TZ
    
    //case Lakota     lkt
    //Lakota (United States)     lkt-US
    
    case machame = "jmc"
    case makonde = "kde"
    
    
    //MARK: -
    
    case malay = "ms"
    case malayArabic = "ms-Arab"
    case malayLatn = "ms-Latn"
    //Malay (Brunei Darussalam)     ms-BN
    //Malay (Malaysia)     ms-MY
    //Malay (Latin Singapore)     ms-SG
    
    
    //MARK: -
    
    case maltese = "mt"
    case manx = "gv"
    case marathi = "mr"
    
    case masai = "mas"
    //Masai (Kenya)     mas-KE
    //Masai (Tanzania)     mas-TZ
    
    case meru = "mer"
    //Meru (Kenya)     mer-KE
    
    case malagasy = "mg"
    //Malagasy (Madagascar)     mg-MG
    
    /// Makhuwa-Meetto
    case makhuwa_meetto = "mgh"
    //Makhuwa-Meetto (Mozambique)     mgh-MZ
    
    case meta = "mgo"
    //Metaʼ (Cameroon)     mgo-CM
    
    case maori = "mi"
    //Maori (New Zealand)     mi-NZ
    
    /// Macedonian (FYROM)
    case macedonianFYROM  = "mk"
    //Macedonian (Former Yugoslav Republic of Macedonia)     mk-MK
    
    case malayalam = "ml"
    //Malayalam (India)     ml-IN
    
    case manipuri = "mni"
    
    case mohawk = "moh"
    case moh_CAkaj = "moh-cakaj"

    case mundang = "mua"
    
    //MARK: -
    
    case mongolian = "mn"
    
    /// Mongolian (Cyrillic)
    case mongolianCyrl = "mn-Cyrl"
    //Mongolian (Cyrillic Mongolia)     mn-MN
    //Mongolian (Traditional Mongolian)     mn-Mong
    //Mongolian (Traditional Mongolian PRC)     mn-Mong-CN
    //Mongolian (Traditional Mongolian Mongolia)     mn-Mong-MN
    
    
    //MARK: -
    
    
    //case Manx     gv
    //Manx (Isle of Man)     gv-IM
    
    //case Mapudungun     arn
    //Mapudungun (Chile)     arn-CL
    
    //case Machame     jmc
    //Machame (Tanzania)     jmc-TZ
    
    //case Makonde     kde
    //Makonde (Tanzania)     kde-TZ
    
    //case Ngomba     jgo
    //Ngomba (Cameroon)     jgo-CM
    
    
    //Northern Luri     lrc
    //Northern Luri (Iraq)     lrc-IQ
    //Northern Luri (Iran)     lrc-IR
    
    //case Mazanderani     mzn
    //Mazanderani (Iran)     mzn-IR
    
    //case Nama     naq
    //Nama (Namibia)     naq-NA
    
    
    //case North Ndebele     nd
    //North Ndebele (Zimbabwe)     nd-ZW
    
    //case Nepali     ne
    //Nepali (India)     ne-IN
    //Nepali (Nepal)     ne-NP
    
    //case Ngiemboon     nnh
    //Ngiemboon (Cameroon)     nnh-CM
    
    //case N'ko     nqo
    //N'ko (Guinea)     nqo-GN

    //case Nuer     nus
    //Nuer (South Sudan)     nus-SS
    

    case morisyen = "mfe"
    //Morisyen (Mauritius)     mfe-MU

    case nama = "naq"
    case nepali = "ne"
    case ngiemboon = "nnh"
    case ngomba = "jgo"
    case northNdebele = "nd"
    
    ///Norwegian (Bokmål)
    case norwegianBokml = "nb"
    
    /// Norwegian (Nynorsk)
    case norwegianNynorsk = "nn"
    //Norwegian Bokmål (Norway)     nb-NO
    //Norwegian Bokmål (Svalbard and Jan Mayen)     nb-SJ
    //case Norwegian     no
    //Norwegian Nynorsk (Norway)     nn-NO
    
    case nuer = "nus"
    
    case nyankole = "nyn"
    //Nyankole (Uganda)     nyn-UG

    case oriya = "or"
    //Oriya (India)     or-IN

    case oromo = "om"
    //Oromo (Ethiopia)     om-ET
    //Oromo (Kenya)     om-KE
    
    case ossetic = "os"
    //Ossetian (Georgia)     os-GE
    //Ossetian (Russia)     os-RU

    case occitan = "oc"
    //Occitan (France)     oc-FR
    
    
    case pashto = "ps"
    case persian = "fa"
    case polish = "pl"
    
    
    //case Papiamento     pap
    //Papiamento (Caribbean)     pap-029
    
    //case Pashto     ps
    //Pashto (Afghanistan)     ps-AF
    
    //case Polish     pl
    //Polish (Poland)     pl-PL
    
    //case Prussian     prg
    //Prussian (World)     prg-001

    
    //MARK: - portuguese
    
    case portuguese = "pt"
    //Portuguese (Angola)     pt-AO
    //Portuguese (Brazil)     pt-BR
    //Portuguese (Cabo Verde)     pt-CV
    //Portuguese (Guinea-Bissau)     pt-GW
    //Portuguese (Macao SAR)     pt-MO
    //Portuguese (Mozambique)     pt-MZ
    //Portuguese (Portugal)     pt-PT
    //Portuguese (São Tomé and Príncipe)     pt-ST
    //Portuguese (Timor-Leste)     pt-TL
    
    
    //MARK: -
    
    case punjabi = "pa"
    case punjabiArabic = "pa-Arab"
    case punjabiGuru = "pa-Guru"
    //Punjabi (Pakistan)     pa-Arab-PK
    //Punjabi (India)     pa-IN
    
    case quechua = "qu"
    //Quechua     quz ???
    //Quechua (Bolivia)     quz-BO ???
    //Quechua (Ecuador)     quz-EC ???
    //Quechua (Peru)     quz-PE ???
    
    
    case romanian = "ro"
    //Romanian (Moldova)     ro-MD
    //Romanian (Romania)     ro-RO
    
    case romansh = "rm"
    //Romansh (Switzerland)     rm-CH

    case rombo = "rof"
    //Rombo (Tanzania)     rof-TZ
    
    case rundi = "rn"
    //Rundi (Burundi)     rn-BI
    

    
    //MARK: - russian
    
    case russian = "ru"
    //Russian (Belarus)     ru-BY
    //Russian (Kyrgyzstan)     ru-KG
    //Russian (Kazakhstan)     ru-KZ
    //Russian (Moldova)     ru-MD
    //Russian (Russia)     ru-RU
    //Russian (Ukraine)     ru-UA
    
    
    //case Persian     fa
    //Persian (Iran)     fa-IR

    
    //MARK: -
    
    case rwa = "rwk"
    //Rwa (Tanzania)     rwk-TZ

    case sango = "sg"
    case serbian = "sr"
    
    /// Serbian (Cyrillic)
    case serbianCyrl = "sr-Cyrl"
    
    
    //MARK: -
    
    ///Serbian (Latin)
    case serbianLatin = "sr-Latn"
    
    //Serbian (Cyrillic Bosnia and Herzegovina)     sr-Cyrl-BA
    //Serbian (Cyrillic Montenegro)     sr-Cyrl-ME
    //Serbian (Cyrillic Serbia)     sr-Cyrl-RS
    //Serbian (Cyrillic Kosovo)     sr-Cyrl-XK
    //Serbian (Latin Bosnia and Herzegovina)     sr-Latn-BA
    //Serbian (Latin Montenegro)     sr-Latn-ME
    //Serbian (Latin Serbia)     sr-Latn-RS
    //Serbian (Latin Kosovo)     sr-Latn-XK
    
    
    //MARK: -
    
    case shona = "sn"
    case sinhala = "si"
    case slovak = "sk"
    case slovenian = "sl"
    case somali = "so"
    
    case sanskrit = "sa"
    //Sanskrit (India)     sa-IN
    
    case yakut = "sah"
    //Yakut (Russia)     sah-RU
    
    case samburu = "saq"
    //Samburu (Kenya)     saq-KE
    
    case sangu = "sbp"
    //Sangu (Tanzania)     sbp-TZ
    
    case sindhi = "sd"
    //Sindhi (Arabic)     sd-Arab
    //Sindhi (Pakistan)     sd-Arab-PK
    //Sindhi (Devanagari)     sd-Deva
    //Sindhi (Devanagari India)     sd-Deva-IN
    
    /// Sami (Northern)
    case sami = "se"
    //Sami Northern (Finland)     se-FI
    //Sami Northern (Norway)     se-NO
    //Sami Northern (Sweden)     se-SE
    
    case sena = "seh"
    //Sena (Mozambique)     seh-MZ

    
    //MARK: - spanish
    
    case spanish = "es"
    //Spanish (Latin America)     es-419
    //Spanish (Argentina)     es-AR
    //Spanish (Bolivia)     es-BO
    //Spanish (Chile)     es-CL
    //Spanish (Colombia)     es-CO
    //Spanish (Costa Rica)     es-CR
    //Spanish (Cuba)     es-CU
    //Spanish (Dominican Republic)     es-DO
    //Spanish (Ecuador)     es-EC
    //Spanish (Spain International Sort)     es-ES
    //Spanish (Equatorial Guinea)     es-GQ
    //Spanish (Guatemala)     es-GT
    //Spanish (Honduras)     es-HN
    //Spanish (Mexico)     es-MX
    //Spanish (Nicaragua)     es-NI
    //Spanish (Panama)     es-PA
    //Spanish (Peru)     es-PE
    //Spanish (Philippines)     es-PH
    //Spanish (Puerto Rico)     es-PR
    //Spanish (Paraguay)     es-PY
    //Spanish (El Salvador)     es-SV
    //Spanish (United States)     es-US
    //Spanish (Uruguay)     es-UY
    //Spanish (Bolivarian Republic of Venezuela)     es-VE
    
    
    //MARK: - Morocco
    
    case standardMoroccanTamazight = "zgh"
    
    case tachelhit = "shi"
    case tachelhitLatn = "shi-Latn"
    
    //Tachelhit (Tifinagh)
    case tachelhitTifinagh = "shi-Tfng"
    //Tachelhit (Latin Morocco)     shi-Latn-MA
    //Tachelhit (Tifinagh Morocco)     shi-Tfng-MA
    
    
    //Central Atlas Tamazight (Arabic)     tzm-Arab
    //Central Atlas Tamazight (Arabic Morocco)     tzm-Arab-MA
    
    //case Standard Morrocan Tamazight     zgh
    //Standard Morrocan Tamazight (Tifinagh)     zgh-Tfng
    //Standard Morrocan Tamazight (Tifinagh Morocco)     zgh-Tfng-MA
    
    //Central Atlas Tamazight (Latin Morocco)     tzm-Latn-MA
    //Central Atlas Tamazight (Tifinagh)     tzm-Tfng
    //Central Atlas Tamazight (Tifinagh Morocco)     tzm-Tfng-MA
    
    
    //MARK: -
    
    
    //case Sango     sg
    //Sango (Central African Republic)     sg-CF
    
    //case Sinhala     si
    //Sinhala (Sri Lanka)     si-LK
    
    //case Slovak     sk
    //Slovak (Slovakia)     sk-SK
    
    //Slovenian     sl
    //Slovenian (Slovenia)     sl-SI
    
    //case Sami (Southern)     sma
    //Sami Southern (Norway)     sma-NO
    //Sami Southern (Sweden)     sma-SE
    //case Sami (Lule)     smj
    //Sami Lule (Norway)     smj-NO
    //Sami Lule (Sweden)     smj-SE
    //case Sami (Inari)     smn
    //Sami Inari (Finland)     smn-FI
    //case Sami (Skolt)     sms
    //Sami Skolt (Finland)     sms-FI
    
    //case Shona     sn
    //Shona (Latin)     sn-Latn
    //Shona (Latin Zimbabwe)     sn-Latn-ZW
    
    //case Somali     so
    //Somali (Djibouti)     so-DJ
    //Somali (Ethiopia)     so-ET
    //Somali (Kenya)     so-KE
    //Somali (Somalia)     so-SO
    
    
    
    //case siSwati     ss
    //siSwati (Swaziland)     ss-SZ
    //siSwati (South Africa)     ss-ZA
    
    //Saho     ssy
    //Saho (Eritrea)     ssy-ER
    
    //case Southern Sotho     st
    //Sesotho (Lesotho)     st-LS
    //Southern Sotho (South Africa)     st-ZA
    
    
    //Swahili (Congo - Kinshasa)     sw-CD
    
    
    case syriac = "syr"
    //Syriac (Syria)     syr-SY
    
    
    case setswana = "tn"
    //Setswana (Botswana)     tn-BW
    //Setswana (South Africa)     tn-ZA
    
    case soga = "xog"
    //Soga (Uganda)     xog-UG


    case shambala = "ksb"
    //Shambala (Tanzania)     ksb-TZ
    
    
    case scottishGaelic = "gd"
    //Scottish Gaelic (United Kingdom)     gd-GB
    
    case southNdebele = "nr"
    //South Ndebele (South Africa)     nr-ZA
    
    //case Sesotho sa Leboa     nso
    //Sesotho sa Leboa (South Africa)     nso-ZA
    
    case taita = "dav"
    //Taita (Kenya)     dav-KE
    
    case welsh = "cy"
    //Welsh (United Kingdom)     cy-GB

    case swahili = "sw"
    
    case swedish = "sv"
    //Swedish (Åland Islands)     sv-AX
    //Swedish (Finland)     sv-FI
    //Swedish (Sweden)     sv-SE
    
    

    case tajik = "tg"
    case tajikCyrl = "tg-Cyrl"
    //Tajik (Cyrillic Tajikistan)     tg-Cyrl-TJ
    
    case tamil = "ta"
    //Tamil (India)     ta-IN
    //Tamil (Sri Lanka)     ta-LK
    //Tamil (Malaysia)     ta-MY
    //Tamil (Singapore)     ta-SG
    
    
    case telugu = "te"
    //Telugu (India)     te-IN
    
    case teso = "teo"
    //Teso (Kenya)     teo-KE
    //Teso (Uganda)     teo-UG
    
    case thai = "th"
    //Thai (Thailand)     th-TH

    case tibetan = "bo"
    //Tibetan (PRC)     bo-CN
    //Tibetan (India)     bo-IN
    
    case tigre = "tig"
    //Tigre (Eritrea)     tig-ER
    
    case tongan = "to"
    //Tongan (Tonga)     to-TO
    
    case turkish = "tr"
    //Turkish (Cyprus)     tr-CY
    //Turkish (Turkey)     tr-TR
    
    case tsonga = "ts"
    //Tsonga (South Africa)     ts-ZA
    
    case tatar = "tt"
    //Tatar (Russia)     tt-RU
    
    case tasawaq = "twq"
    //Tasawaq (Niger)     twq-NE
    
    
    case tigrinya = "ti"
    //Tigrinya (Eritrea)     ti-ER
    //Tigrinya (Ethiopia)     ti-ET
    
    
    case turkmen = "tk"
    case turkmenLatn = "tk-Latn"
    //Turkmen (Turkmenistan)     tk-TM
    
    case ukrainian = "uk"
    //Ukrainian (Ukraine)     uk-UA

    case upperSorbian = "hsb"
    //Upper Sorbian (Germany)     hsb-DE
    
    case urdu = "ur"
    //Urdu (India)     ur-IN
    //Urdu (Islamic Republic of Pakistan)     ur-PK
    
    case uyghur = "ug"
    case uyghurArabic = "ug-Arab"
    //Uyghur (PRC)     ug-CN

    
    case uzbek = "uz"
    //Uzbek (Perso-Arabic)     uz-Arab
    //Uzbek (Perso-Arabic Afghanistan)     uz-Arab-AF
    //Uzbek (Cyrillic)     uz-Cyrl
    //Uzbek (Cyrillic Uzbekistan)     uz-Cyrl-UZ
    //Uzbek (Latin)     uz-Latn
    //Uzbek (Latin Uzbekistan)     uz-Latn-UZ
    
    
    case uzbekArabic = "uz-Arab"
    case uzbekCyrl = "uz-Cyrl"
    case uzbekLatin = "uz-Latn"
    
    case vai = "vai"
    case vaiLatin = "vai-Latn"
    //Vai (Vai)     vai-Vaii
    //Vai (Latin Liberia)     vai-Latn-LR
    //Vai (Vai Liberia)     vai-Vaii-LR
    
    
    case venda = "ve"
    //Venda (South Africa)     ve-ZA
    
    case vietnamese = "vi"
    //Vietnamese (Vietnam)     vi-VN
    
    /// Volapük
    case volapuk = "vo"
    //case Volapük (World)     vo-001
    
    case vunjo = "vun"
    //Vunjo (Tanzania)     vun-TZ
    

    case walser = "wae"
    //Walser (Switzerland)     wae-CH
    
    case wolaytta = "wal"
    //Wolaytta (Ethiopia)     wal-ET
    
    case wolof = "wo"
    //Wolof (Senegal)     wo-SN

//westernFrisian
    case frisian = "fy"
    //Frisian (Netherlands)     fy-NL
    
    case yangben = "yav"
    //Yangben (Cameroon)     yav-CM

    case yi = "ii"
    //Yi (PRC)     ii-CN
    
    case yiddish = "yi"
    //Yiddish (World)     yi-001

    case yoruba = "yo"
    //Yoruba (Benin)     yo-BJ
    //Yoruba (Nigeria)     yo-NG

    
    case zarma = "dje"
    //Zarma (Niger)     dje-NE

    case isiZulu = "zu"
    //isiZulu (South Africa)     zu-ZA
    
    
    //case Congo Swahili     swc
    //Spanish (Latin America) deprecated     x-es-XL
}
