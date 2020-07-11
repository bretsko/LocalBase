

/// Country locale, has countryName and lang
protocol CountryLIDT: LIDT {
    
    var currencyCode: Str? {get}

    var countryID: CountryL {get}
    
    init?(_ countryID: CountryL)
}


/// Country locale, has countryName and lang
/// Both country and language name can be translated into any lang (507 cases)
/// The rawValue contains locale identifiers, representing ISO 639-1 language codes or combined ISO 639-1 language codes and ISO 3166-1 regional codes (for example, en_US)
public enum CountryLID: Str, CountryLIDT {
    
    // see https://unicode-org.github.io/cldr-staging/charts/37/summary/root.html

    // remove cases without country, use tests to detect
    
    case wa_BE, ba_RU, dv_MV, co_FR, wal_ET, ce_RU
    case sc_IT
    case jv_ID
    case myv_RU
    case jbo_001
    case gez_ER, gez_ET
    case arn_CL
    case xh_ZA
    case sa_IN, ia_001
    case mi_NZ
    case scn_IT
    case nds_DE, nds_NL
    case gaa_GH
    case trv_TW
    case kcg_NG
    case nso_ZA
    case moh_CA = "moh_CA"
    
    case mni_Beng_IN = "mni-Beng_IN"
    
    case ny_MW
    
    case ts_ZA, wo_SN
    case ku_TR, nr_ZA
    case kaj_NG
    case eo_001, tt_RU
    case io_001
    case gn_PY
    
    case satOlckIN = "sat-Olck_IN"
    case satsatDevaIndia = "sat-Deva_IN"
    
    case kpe_GN, kpe_LR
    case lrc_IR, lrc_IQ
    
    case ast_ES, sd_PK, oc_FR
    
    case  ceb_PH
    case yue_HK
    case yue_CN
    
    case nqo_GN
    case byn_ER
    case syr_IQ, syr_SY
    case tn_BW, tn_ZA
    case cv_RU
    case ve_ZA
    case ccp_BD, ccp_IN
    
    case mzn_IR
    
    
    case afrikaansNamibia = "af_NA"
    case afrikaansSouthAfrica = "af_ZA"
    
    case amharicEthiopia = "am_ET"
    
    case arabicAlgeria = "ar_DZ"
    case arabicBahrain = "ar_BH"
    case arabicChad = "ar_TD"
    case arabicComoros = "ar_KM"
    case arabicDjibouti = "ar_DJ"
    case arabicEgypt = "ar_EG"
    case arabicEritrea = "ar_ER"
    case arabicIraq = "ar_IQ"
    case arabicIsrael = "ar_IL"
    case arabicJordan = "ar_JO"
    case arabicKuwait = "ar_KW"
    case arabicLebanon = "ar_LB"
    case arabicLibya = "ar_LY"
    case arabicMauritania = "ar_MR"
    case arabicMorocco = "ar_MA"
    case arabicOman = "ar_OM"
    case arabicPalestinianTerritories = "ar_PS"
    case arabicQatar = "ar_QA"
    case arabicSaudiArabia = "ar_SA"
    case arabicSomalia = "ar_SO"
    case arabicSouthSudan = "ar_SS"
    case arabicSudan = "ar_SD"
    case arabicSyria = "ar_SY"
    case arabicTunisia = "ar_TN"
    case arabicUnitedArabEmirates = "ar_AE"
    case arabicWesternSahara = "ar_EH"
    case arabicYemen = "ar_YE"
    
    case assameseIndia = "as_IN"
    
    case azerAzerbaijan = "az_AZ"
    case azerCyrillicAzerbaijan = "az-Cyrl_AZ"
    case azerLatinAzerbaijan = "az-Latn_AZ"
    
    case bambaraMali = "bm_ML"
    case bambaraLatnMali = "bm-Latn_ML"
    
    case basqueSpain = "eu_ES"
    case belarusianBelarus = "be_BY"
    case bengaliBangladesh = "bn_BD"
    
    case bosnianBosniaHerzegovina = "bs_BA"
    case bosnianLatnBosniaHerzegovina = "bs-Latn_BA"
    case bosnianCyrlBosniaHerzegovina = "bs-Cyrl_BA"
    
    case bretonFrance = "br_FR"
    case bulgarianBulgaria = "bg_BG"
    case burmeseMyanmarBurma = "my_MM"
    
    case catalanAndorra = "ca_AD"
    case catalanFrance = "ca_FR"
    case catalanItaly = "ca_IT"
    case catalanSpain = "ca_ES"
    
    case cornishUnitedKingdom = "kw_GB"
    
    case croatianBosniaHerzegovina = "hr_BA"
    case croatianCroatia = "hr_HR"
    
    case czechCzechRepublic = "cs_CZ"
    
    case dutchAruba = "nl_AW"
    case dutchBelgium = "nl_BE"
    case dutchCaribbeanNetherlands = "nl_BQ"
    case dutchCuraao = "nl_CW"
    case dutchNetherlands = "nl_NL"
    case dutchSintMaarten = "nl_SX"
    case dutchSuriname = "nl_SR"
    
    case dzongkhaBhutan = "dz_BT"
    case engaliIndia = "bn_IN"
    case estonianEstonia = "et_EE"
    
    case eweGhana = "ee_GH"
    case eweTogo = "ee_TG"
    
    case faroeseFaroeIslands = "fo_FO"
    case faroeseDenmark = "fo_DK"
    
    case finnishFinland = "fi_FI"
    
    case frenchAlgeria = "fr_DZ"
    case frenchBelgium = "fr_BE"
    case frenchBenin = "fr_BJ"
    case frenchBurkinaFaso = "fr_BF"
    case frenchBurundi = "fr_BI"
    case frenchCameroon = "fr_CM"
    case frenchCanada = "fr_CA"
    case frenchCentralAfricanRepublic = "fr_CF"
    case frenchChad = "fr_TD"
    case frenchComoros = "fr_KM"
    case frenchCongoBrazzaville = "fr_CG"
    case frenchCongoKinshasa = "fr_CD"
    case frenchCteDivoire = "fr_CI"
    case frenchDjibouti = "fr_DJ"
    case frenchEquatorialGuinea = "fr_GQ"
    case frenchFrance = "fr_FR"
    case frenchFrenchGuiana = "fr_GF"
    case frenchFrenchPolynesia = "fr_PF"
    case frenchGabon = "fr_GA"
    case frenchGuadeloupe = "fr_GP"
    case frenchGuinea = "fr_GN"
    case frenchHaiti = "fr_HT"
    case frenchLuxembourg = "fr_LU"
    case frenchMadagascar = "fr_MG"
    case frenchMali = "fr_ML"
    case frenchMartinique = "fr_MQ"
    case frenchMauritania = "fr_MR"
    case frenchMauritius = "fr_MU"
    case frenchMayotte = "fr_YT"
    case frenchMonaco = "fr_MC"
    case frenchMorocco = "fr_MA"
    case frenchNewCaledonia = "fr_NC"
    case frenchNiger = "fr_NE"
    case frenchRunion = "fr_RE"
    case frenchRwanda = "fr_RW"
    case frenchSenegal = "fr_SN"
    case frenchSeychelles = "fr_SC"
    case frenchStBarthlemy = "fr_BL"
    case frenchStMartin = "fr_MF"
    case frenchStPierreMiquelon = "fr_PM"
    case frenchSwitzerland = "fr_CH"
    case frenchSyria = "fr_SY"
    case frenchTogo = "fr_TG"
    case frenchTunisia = "fr_TN"
    case frenchVanuatu = "fr_VU"
    case frenchWallisFutuna = "fr_WF"
    
    case galicianSpain = "gl_ES"
    
    case germanItaly = "de_IT"
    case germanAustria = "de_AT"
    case germanBelgium = "de_BE"
    case germanGermany = "de_DE"
    case germanLiechtenstein = "de_LI"
    case germanLuxembourg = "de_LU"
    case germanSwitzerland = "de_CH"
    
    case gujaratiIndia = "gu_IN"
    case hungarianHungary = "hu_HU"
    case icelandicIceland = "is_IS"
    case indonesianIndonesia = "id_ID"
    case irishIreland = "ga_IE"
    
    case italianItaly = "it_IT"
    case italianSanMarino = "it_SM"
    case italianSwitzerland = "it_CH"
    case it_VA
    
    case manipuriIndia = " mni-IN"

    case kannadaIndia = "kn_IN"
    case khmerCambodia = "km_KH"
    case kikuyuKenya = "ki_KE"
    case kinyarwandaRwanda = "rw_RW"
    
    case kyrgyzKyrgyzstan = "ky_KG"
    case kyrgyzCyrlKyrgyzstan = "ky-Cyrl_KG"
    
    case latvianLatvia = "lv_LV"
    case lithuanianLithuania = "lt_LT"
    case lubaKatangaCongoKinshasa = "lu_CD"
    case luxembourgishLuxembourg = "lb_LU"
    case macedonianMacedonia = "mk_MK"
    case malagasyMadagascar = "mg_MG"
    
    case malayBrunei = "ms_BN"
    case malayArabBrunei = "ms-Arab_BN"
    case malayLatnBrunei = "ms-Latn_BN"
    
    case malayMalaysia = "ms_MY"
    case malayLatnMalaysia = "ms-Latn_MY"
    case malayArabMalaysia = "ms-Arab_MY"
    
    case malaySingapore = "ms_SG"
    case malayLatnSingapore = "ms-Latn_SG"
    
    case malayalamIndia = "ml_IN"
    
    case malteseMalta = "mt_MT"
    case marathiIndia = "mr_IN"
    
    case mongolianMongolia = "mn_MN"
    case mongolianCyrlMongolia = "mn-Cyrl_MN"
    
    case nepaliIndia = "ne_IN"
    case nepaliNepal = "ne_NP"
    
    case northernSamiFinland = "se_FI"
    case northernSamiNorway = "se_NO"
    case northernSamiSweden = "se_SE"
    
    case oromoEthiopia = "om_ET"
    case oromoKenya = "om_KE"
    
    case pashtoAfghanistan = "ps_AF"
    case pashtoPakistan = "ps_PK"
    
    case polishPoland = "pl_PL"
    
    case pt_GQ, pt_CH, pt_FR
    case portugueseAngola = "pt_AO"
    case portugueseBrazil = "pt_BR"
    case portugueseCapeVerde = "pt_CV"
    case portugueseGuineaBissau = "pt_GW"
    case portugueseMacauSarChina = "pt_MO"
    case portugueseMozambique = "pt_MZ"
    case portuguesePortugal = "pt_PT"
    case portugueseSoTomPrncipe = "pt_ST"
    case portugueseTimorLeste = "pt_TL"
    case pt_LU = "pt_LU"
    
    
    case punjabiArabicPakistan = "pa-Arab_PK"
    case punjabiAranPakistan = "pa-Aran_PK"
    
    
    case punjabiIndia = "pa_IN"
    case punjabiIndia1 = "pa-Guru_IN"
    
    case romanianMoldova = "ro_MD"
    case romanianRomania = "ro_RO"
    
    case russianBelarus = "ru_BY"
    case russianKazakhstan = "ru_KZ"
    case russianKyrgyzstan = "ru_KG"
    case russianMoldova = "ru_MD"
    case russianRussia = "ru_RU"
    case russianUkraine = "ru_UA"
    
    case sangoCentralAfricanRepublic = "sg_CF"
    case scottishGaelicUnitedKingdom = "gd_GB"
    
    case serbianBosniaHerzegovina = "sr_BA"
    case serbianCyrlBosniaHerzegovina = "sr-Cyrl_BA"
    case serbianLatnBosniaHerzegovina = "sr-Latn_BA"
    
    case serbianKosovo = "sr_XK"
    case serbianCyrlKosovo = "sr-Cyrl_XK"
    case serbianLatnKosovo = "sr-Latn_XK"
    
    case serbianMontenegro = "sr_ME"
    case serbianLatnMontenegro = "sr-Latn_ME"
    case serbianCyrlMontenegro = "sr-Cyrl_ME"
    
    case serbianSerbia = "sr_RS"
    case serbianLatnSerbia = "sr-Latn_RS"
    case serbianCyrlSerbia = "sr-Cyrl_RS"
    
    case shonaZimbabwe = "sn_ZW"
    case sinhalaSriLanka = "si_LK"
    case slovakSlovakia = "sk_SK"
    case slovenianSlovenia = "sl_SI"
    
    case somaliDjibouti = "so_DJ"
    case somaliEthiopia = "so_ET"
    case somaliKenya = "so_KE"
    case somaliSomalia = "so_SO"
    
    case spanishArgentina = "es_AR"
    case spanishBolivia = "es_BO"
    case spanishCanaryIslands = "es_IC"
    case spanishCeutaMelilla = "es_EA"
    case spanishChile = "es_CL"
    case spanishColombia = "es_CO"
    case spanishCostaRica = "es_CR"
    case spanishCuba = "es_CU"
    case spanishDominicanRepublic = "es_DO"
    case spanishEcuador = "es_EC"
    case spanishElSalvador = "es_SV"
    case spanishEquatorialGuinea = "es_GQ"
    case spanishGuatemala = "es_GT"
    case spanishHonduras = "es_HN"
    case spanishMexico = "es_MX"
    case spanishNicaragua = "es_NI"
    case spanishPanama = "es_PA"
    case spanishParaguay = "es_PY"
    case spanishPeru = "es_PE"
    case spanishPhilippines = "es_PH"
    case spanishPuertoRico = "es_PR"
    case spanishSpain = "es_ES"
    case spanishUnitedStates = "es_US"
    case spanishUruguay = "es_UY"
    case spanishVenezuela = "es_VE"
    case es_LC, es_DM, es_GP, es_BQ, es_BR, es_BM, es_MQ, es_BZ, es_AW, es_BB, es_AG, es_VC, es_GY, es_KY, es_PM, es_GD, es_CW, es_BS, es_GF, es_KN, es_CA, es_TT, es_MF, es_AI, es_GL, es_SR, es_TC, es_MS, es_SX, es_VG, es_FK, es_HT, es_BL, es_VI
    
    case swedishFinland = "sv_FI"
    case swedishSweden = "sv_SE"
    case swedishlandIslands = "sv_AX"
    
    case tajikTajikistan = "tg_TJ"
    case tajikCyrlTajikistan = "tg-Cyrl_TJ"
    
    case tamilIndia = "ta_IN"
    case tamilMalaysia = "ta_MY"
    case tamilSingapore = "ta_SG"
    case tamilSriLanka = "ta_LK"
    
    case thaiThailand = "th_TH"
    
    case tibetanChina = "bo_CN"
    case tibetanIndia = "bo_IN"
    
    case tonganTonga = "to_TO"
    case turkishCyprus = "tr_CY"
    case turkishTurkey = "tr_TR"
    
    case turkmenTurkmenistan = "tk_TM"
    case turkmenLatnTurkmenistan = "tk-Latn_TM"
    
    case ukrainianUkraine = "uk_UA"
    
    case uyghurChina = "ug_CN"
    case uyghurArabicChina = "ug-Arab_CN"
    
    case uzbekArabicAfghanistan = "uz-Arab_AF"
    
    case uzbekUzbekistan = "uz_UZ"
    case uzbekCyrlUzbekistan = "uz-Cyrl_UZ"
    case uzbekLatnUzbekistan = "uz-Latn_UZ"
    
    case vietnameseVietnam = "vi_VN"
    case welshUnitedKingdom = "cy_GB"
    
    case aghemCameroon = "agq_CM"
    case akanGhana = "ak_GH"
    
    case albanianAlbania = "sq_AL"
    case albanianKosovo = "sq_XK"
    case albanianMacedonia = "sq_MK"
    
    case armenianArmenia = "hy_AM"
    case asuTanzania = "asa_TZ"
    
    case kashmiriIndia = "ks_IN"
    case kashmiriArabicIndia = "ks-Arab_IN"
    
    case bafiaCameroon = "ksf_CM"
    
    case basaaCameroon = "bas_CM"
    case bembaZambia = "bem_ZM"
    case benaTanzania = "bez_TZ"
    case bodoIndia = "brx_IN"
    
    case centralAtlasTamazightMorocco = "tzm_MA"
    case centralAtlasTamazightLatnMorocco = "tzm-Latn_MA"
    
    case centralKurdishIran = "ckb_IR"
    case centralKurdishIraq = "ckb_IQ"
    
    case cherokeeUnitedStates = "chr_US"
    case chigaUganda = "cgg_UG"
    
    case chineseChina = "zh_CN"
    case chineseHansChina = "zh-Hans_CN"
    case chineseHantChina = "zh-Hant_CN"
    
    case chineseHongKongSarChina = "zh_HK"
    /// Simplified
    case chineseSimplifiedHongKongSarChina = "zh-Hans_HK"
    case chineseMainlandHongKongSarChina = "zh-Hant_HK"
    
    case chineseMacauSarChina = "zh_MO" //"zh-Hant_MO"
    case chineseSimplifiedMacauSarChina = "zh-Hans_MO"
    case chineseMainlandMacauSarChina = "zh-Hant_MO"
    
    case chineseSingapore = "zh_SG"
    case chineseSimplifiedSingapore = "zh-Hans_SG"
    
    case chineseTaiwan = "zh_TW"
    case chineseMainlandTaiwan = "zh_Hant_TW"
    
    case colognianGermany = "ksh_DE"
    case danishDenmark = "da_DK"
    case danishGreenland = "da_GL"
    case dualaCameroon = "dua_CM"
    case embuKenya = "ebu_KE"
    
    case englishAlbania = "en_AL"
    case englishAmericanSamoa = "en_AS"
    case englishAndorra = "en_AD"
    case englishAnguilla = "en_AI"
    case englishAntiguaBarbuda = "en_AG"
    case englishAustralia = "en_AU"
    case englishAustria = "en_AT"
    case englishBahamas = "en_BS"
    case englishBarbados = "en_BB"
    case englishBelgium = "en_BE"
    case englishBelize = "en_BZ"
    case englishBermuda = "en_BM"
    case englishBosniaHerzegovina = "en_BA"
    case englishBotswana = "en_BW"
    case englishBritishIndianOceanTerritory = "en_IO"
    case englishBritishVirginIslands = "en_VG"
    case englishCameroon = "en_CM"
    case englishCanada = "en_CA"
    case englishCaymanIslands = "en_KY"
    case englishChristmasIsland = "en_CX"
    case englishCocosKeelingIslands = "en_CC"
    case englishCookIslands = "en_CK"
    case englishCroatia = "en_HR"
    case englishCyprus = "en_CY"
    case englishCzechRepublic = "en_CZ"
    case englishDenmark = "en_DK"
    case englishDiegoGarcia = "en_DG"
    case englishDominica = "en_DM"
    case englishEritrea = "en_ER"
    case englishEstonia = "en_EE"
    case englishFalklandIslands = "en_FK"
    case englishFiji = "en_FJ"
    case englishFinland = "en_FI"
    case englishFrance = "en_FR"
    case englishGambia = "en_GM"
    case englishGermany = "en_DE"
    case englishGhana = "en_GH"
    case englishGibraltar = "en_GI"
    case englishGreece = "en_GR"
    case englishGrenada = "en_GD"
    case englishGuam = "en_GU"
    case englishGuernsey = "en_GG"
    case englishGuyana = "en_GY"
    case englishHongKongSarChina = "en_HK"
    case englishHungary = "en_HU"
    case englishIceland = "en_IS"
    case englishIndia = "en_IN"
    case englishIreland = "en_IE"
    case englishIsleOfMan = "en_IM"
    case englishIsrael = "en_IL"
    case englishItaly = "en_IT"
    case englishJamaica = "en_JM"
    case englishJersey = "en_JE"
    case englishKenya = "en_KE"
    case englishKiribati = "en_KI"
    case englishLatvia = "en_LV"
    case englishLesotho = "en_LS"
    case englishLiberia = "en_LR"
    case englishLithuania = "en_LT"
    case englishLuxembourg = "en_LU"
    case englishMacauSarChina = "en_MO"
    case englishMadagascar = "en_MG"
    case englishMalawi = "en_MW"
    case englishMalaysia = "en_MY"
    case englishMalta = "en_MT"
    case englishMarshallIslands = "en_MH"
    case englishMauritius = "en_MU"
    case englishMicronesia = "en_FM"
    case englishMontenegro = "en_ME"
    case englishMontserrat = "en_MS"
    case englishNamibia = "en_NA" //?
    case englishNauru = "en_NR"
    case englishNetherlands = "en_NL"
    case englishNewZealand = "en_NZ"
    case englishNigeria = "en_NG"
    case englishNiue = "en_NU"
    case englishNorfolkIsland = "en_NF"
    case englishNorthernMarianaIslands = "en_MP"
    case englishNorway = "en_NO"
    case englishPakistan = "en_PK"
    case englishPalau = "en_PW"
    case englishPapuaNewGuinea = "en_PG"
    case englishPhilippines = "en_PH"
    case englishPitcairnIslands = "en_PN"
    case englishPoland = "en_PL"
    case englishPortugal = "en_PT"
    case englishPuertoRico = "en_PR"
    case englishRomania = "en_RO"
    case englishRussia = "en_RU"
    case englishRwanda = "en_RW"
    case englishSamoa = "en_WS"
    case englishSeychelles = "en_SC"
    case englishSierraLeone = "en_SL"
    case englishSingapore = "en_SG"
    case englishSintMaarten = "en_SX"
    case englishSlovakia = "en_SK"
    case englishSlovenia = "en_SI"
    case englishSolomonIslands = "en_SB"
    case englishSouthAfrica = "en_ZA"
    case englishSouthSudan = "en_SS"
    case englishSpain = "en_ES"
    case englishStHelena = "en_SH"
    case englishStKittsNevis = "en_KN"
    case englishStLucia = "en_LC"
    case englishStVincentGrenadines = "en_VC"
    case englishSudan = "en_SD"
    case englishSwaziland = "en_SZ"
    case englishSweden = "en_SE"
    case englishSwitzerland = "en_CH"
    case englishTanzania = "en_TZ"
    case englishTokelau = "en_TK"
    case englishTonga = "en_TO"
    case englishTrinidadTobago = "en_TT"
    case englishTurkey = "en_TR"
    case englishTurksCaicosIslands = "en_TC"
    case englishTuvalu = "en_TV"
    case englishUSOutlyingIslands = "en_UM"
    case englishUSVirginIslands = "en_VI"
    case englishUganda = "en_UG"
    case englishUnitedKingdom = "en_GB"
    case englishUnitedStates = "en_US"
    case englishUnitedStatesComputer = "en_US_POSIX"
    case englishVanuatu = "en_VU"
    case englishZambia = "en_ZM"
    case englishZimbabwe = "en_ZW"
    case en_MM, en_MX, en_MV, en_CN, en_TH, en_SA, en_UA, en_JP, en_BD, en_CO, en_BG, en_KR, en_BI, en_CL, en_AE, en_BR, en_RS, en_AR, en_TW, en_ID
    
    case ewondoCameroon = "ewo_CM"
    case filipinoPhilippines = "fil_PH"
    case friulianItaly = "fur_IT"
    
    case fulahCameroon = "ff_CM"
    case fulahGuinea = "ff_GN"
    case fulahMauritania = "ff_MR"
    case fulahSenegal = "ff_SN"
    case ff_GW, ff_GH, ff_SL, ff_BF, ff_NG, ff_GM, ff_NE, ff_LR
    
    case gandaUganda = "lg_UG"
    case georgianGeorgia = "ka_GE"
    case greekCyprus = "el_CY"
    case greekGreece = "el_GR"
    case gusiiKenya = "guz_KE"
    
    case hausaGhana = "ha_GH"
    case hausaLatn_GHGhana = "ha-Latn_GH"
    
    case hausaSouthAfrica = "ha_NE"
    case hausaLatn_NESouthAfrica = "ha-Latn_NE"
    
    case hausaNigeria = "ha_NG"
    case hausaLatn_NGNigeria = "ha-Latn_NG"
    
    case hawaiianUnitedStates = "haw_US"
    case hebrewIsrael = "he_IL"
    
    case hindiIndia = "hi_IN"
    
    case igboNigeria = "ig_NG"
    case inariSamiFinland = "smn_FI"
    
    case inuktitutUnifiedCanada = "iu_CA"
    case inuktitutUnifiedCanadianAboriginalSyllabicsCanada = "iu-Cans_CA"
    
    case japaneseJapan = "ja_JP"
    case jolaFonyiSenegal = "dyo_SN"
    
    case kabuverdianuCapeVerde = "kea_CV"
    case kabyleAlgeria = "kab_DZ"
    case kakoCameroon = "kkj_CM"
    
    case kalaallisutGreenland = "kl_GL"
    case kalenjinKenya = "kln_KE"
    case kambaKenya = "kam_KE"
    
    case kazakhKazakhstan = "kk_KZ"
    case kazakhCyrl_KZKazakhstan = "kk-Cyrl_KZ"
    
    case konkaniIndia = "kok_IN"
    
    case koreanNorthKorea = "ko_KP"
    case koreanSouthKorea = "ko_KR"
    
    case koyraChiiniMali = "khq_ML"
    case koyraboroSenniMali = "ses_ML"
    case kwasioCameroon = "nmg_CM"
    case lakotaUnitedStates = "lkt_US"
    case langiTanzania = "lag_TZ"
    case laoLaos = "lo_LA"
    
    case lingalaAngola = "ln_AO"
    case lingalaCentralAfricanRepublic = "ln_CF"
    case lingalaCongoBrazzaville = "ln_CG"
    case lingalaCongoKinshasa = "ln_CD"
    
    case lowerSorbianGermany = "dsb_DE"
    case luoKenya = "luo_KE"
    case luyiaKenya = "luy_KE"
    
    case machameTanzania = "jmc_TZ"
    case makhuwaMeettoMozambique = "mgh_MZ"
    case makondeTanzania = "kde_TZ"
    case manxIsleOfMan = "gv_IM"
    case masaiKenya = "mas_KE"
    case masaiTanzania = "mas_TZ"
    case meruKenya = "mer_KE"
    case metaCameroon = "mgo_CM"
    case morisyenMauritius = "mfe_MU"
    case mundangCameroon = "mua_CM"
    case namaNamibia = "naq_NA"
    case ngiemboonCameroon = "nnh_CM"
    case ngombaCameroon = "jgo_CM"
    case northNdebeleZimbabwe = "nd_ZW"
    
    case norwegianBokmlNorway = "nb_NO"
    case norwegianBokmlSvalbardJanMayen = "nb_SJ"
    case norwegianNynorskNorway = "nn_NO"
    
    case nuerSudan = "nus_SD"
    case nuer = "nus_SS"
    
    
    case nyankoleUganda = "nyn_UG"
    
    case oriyaIndia = "or_IN"
    
    case osseticGeorgia = "os_GE"
    case osseticRussia = "os_RU"
    
    case persianAfghanistan = "fa_AF"
    case persianIran = "fa_IR"
    
    case quechuaBolivia = "qu_BO"
    case quechuaEcuador = "qu_EC"
    case quechuaPeru = "qu_PE"
    
    case romanshSwitzerland = "rm_CH"
    case romboTanzania = "rof_TZ"
    case rundiBurundi = "rn_BI"
    case rwaTanzania = "rwk_TZ"
    
    case sakhaRussia = "sah_RU"
    case samburuKenya = "saq_KE"
    case sanguTanzania = "sbp_TZ"
    case senaMozambique = "seh_MZ"
    case shambalaTanzania = "ksb_TZ"
    case sichuanYiChina = "ii_CN"
    case sogaUganda = "xog_UG"
    case standardMoroccanTamazightMorocco = "zgh_MA"
    
    case ss_SZ, ss_ZA
    case st_ZA, st_LS
    
    case swahiliCongoKinshasa = "sw_CD"
    case swahiliKenya = "sw_KE"
    case swahiliTanzania = "sw_TZ"
    case swahiliUganda = "sw_UG"
    
    case swissGermanFrance = "gsw_FR"
    case swissGermanLiechtenstein = "gsw_LI"
    case swissGermanSwitzerland = "gsw_CH"
    
    
    case tachelhitMorocco = "shi_MA"
    case tachelhitLatn_MAMorocco = "shi-Latn_MA"
    case tachelhitTifinaghMorocco = "shi-Tfng_MA"
    
    case taitaKenya = "dav_KE"
    case tasawaqNiger = "twq_NE"
    case teluguIndia = "te_IN"
    
    case tesoKenya = "teo_KE"
    case tesoUganda = "teo_UG"
    
    case tig_ER // ti_ER ???
    
    case tigrinyaEritrea = "ti_ER"
    case tigrinyaEthiopia = "ti_ET"
    
    case upperSorbianGermany = "hsb_DE"
    
    case urduIndia = "ur_IN"
    case urduPakistan = "ur_PK"
    
    case urduArabPakistan = "ur-Arab_PK"
    case urduArabIndia = "ur-Arab_IN"
    
    case vaiLiberia = "vai_LR"
    case vaiLatnLiberia = "vai-Latn_LR"
    case vaiVaiiLiberia = "vai_Vaii_LR"
    
    case vunjoTanzania = "vun_TZ"
    case walserSwitzerland = "wae_CH"
    case westernFrisianNetherlands = "fy_NL"
    case yangbenCameroon = "yav_CM"
    
    case yorubaBenin = "yo_BJ"
    case yorubaNigeria = "yo_NG"
    
    case zarmaNiger = "dje_NE"
    case zuluSouthAfrica = "zu_ZA"
}
