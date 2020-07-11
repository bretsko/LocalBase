

public extension LangL {
    
    /// each lang corresponds to several LangLID locales which in addition to lang have formatting options  (cyrillic, latic, etc)
    var langLIDs: Set<LangLID> {
        
        let r: Array<LangLID>
        
        switch self {
        case .english:
            r = [ .english ]
            
        case .french:
            r = [ .french ]
            
        case .arabic:
            r = [.arabic,
                 .arabicNajdi,
                 .malayArabic,
                 .uzbekArabic,
                 .uyghurArabic,
                 .punjabiArabic,
                 .kashmiriArabic ]
            
        case .spanish:
            r = [ .spanish ]
            
        case .portuguese:
            r = [ .portuguese ]
            
        case .german:
            r = [ .german ]
            
        default:
            fatalError()
        //
        //        case .afrikaans:
        //             r = [ .aa ]
        //
        //        case .aghem:
        //             r = [ .aa ]
        //
        //        case .albanian:
        //             r = [ .aa ]
        //
        //        case .amharic:
        //             r = [ .aa ]
        //
        //        case .armenian:
        //             r = [ .aa ]
        //
        //        case .assamese:
        //             r = [ .aa ]
        //
        //        case .asu:
        //             r = [ .aa ]
        //
        //        case .azer:
        //             r = [ .aa ]
        //
        //        case .bafia:
        //             r = [ .aa ]
        //
        //        case .bambara:
        //             r = [ .aa ]
        //
        //        case .basaa:
        //             r = [ .aa ]
        //
        //        case .basque:
        //             r = [ .aa ]
        //
        //        case .belarusian:
        //             r = [ .aa ]
        //
        //        case .bemba:
        //             r = [ .aa ]
        //
        //        case .bena:
        //             r = [ .aa ]
        //
        //        case .bengali:
        //             r = [ .aa ]
        //
        //        case .bodo:
        //             r = [ .aa ]
        //
        //        case .bosnian:
        //             r = [ .aa ]
        //
        //        case .breton:
        //             r = [ .aa ]
        //
        //        case .bulgarian:
        //             r = [ .aa ]
        //
        //        case .burmese:
        //             r = [ .aa ]
        //
        //        case .cantonese:
        //             r = [ .aa ]
        //
        //        case .catalan:
        //             r = [ .aa ]
        //
        //        case .centralAtlasTamazight:
        //             r = [ .aa ]
        //
        //        case .chakma:
        //             r = [ .aa ]
        //
        //        case .cherokee:
        //             r = [ .aa ]
        //
        //        case .chiga:
        //             r = [ .aa ]
        //
        //        case .chinese:
        //             r = [ .aa ]
        //
        //        case .colognian:
        //             r = [ .aa ]
        //
        //        case .cornish:
        //             r = [ .aa ]
        //
        //        case .croatian:
        //             r = [ .aa ]
        //
        //        case .czech:
        //             r = [ .aa ]
        //
        //        case .danish:
        //             r = [ .aa ]
        //
        //        case .duala:
        //             r = [ .aa ]
        //
        //        case .dutch:
        //             r = [ .aa ]
        //
        //        case .dzongkha:
        //             r = [ .aa ]
        //
        //        case .embu:
        //             r = [ .aa ]
        //
        //        case .esperanto:
        //             r = [ .aa ]
        //
        //        case .estonian:
        //             r = [ .aa ]
        //
        //        case .ewe:
        //             r = [ .aa ]
        //
        //        case .ewondo:
        //             r = [ .aa ]
        //
        //        case .faroese:
        //             r = [ .aa ]
        //
        //        case .filipino:
        //             r = [ .aa ]
        //
        //        case .finnish:
        //             r = [ .aa ]
        //
        //        case .friulian:
        //             r = [ .aa ]
        //
        //        case .fulah:
        //             r = [ .aa ]
        //
        //        case .galician:
        //             r = [ .aa ]
        //
        //        case .ganda:
        //             r = [ .aa ]
        //
        //        case .georgian:
        //             r = [ .aa ]
        //
        //        case .greek:
        //             r = [ .aa ]
        //
        //        case .gujarati:
        //             r = [ .aa ]
        //
        //        case .gusii:
        //             r = [ .aa ]
        //
        //        case .hausa:
        //             r = [ .aa ]
        //
        //        case .hawaiian:
        //             r = [ .aa ]
        //
        //        case .hindi:
        //             r = [ .aa ]
        //
        //        case .hungarian:
        //             r = [ .aa ]
        //
        //        case .icelandic:
        //             r = [ .aa ]
        //
        //        case .igbo:
        //             r = [ .aa ]
        //
        //        case .inariSami:
        //             r = [ .aa ]
        //
        //        case .indonesian:
        //             r = [ .aa ]
        //
        //        case .inuktitut:
        //             r = [ .aa ]
        //
        //        case .irish:
        //             r = [ .aa ]
        //
        //        case .italian:
        //             r = [ .aa ]
        //
        //        case .japanese:
        //             r = [ .aa ]
        //
        //        case .jolaFonyi:
        //             r = [ .aa ]
        //
        //        case .kabuverdianu:
        //             r = [ .aa ]
        //
        //        case .kabyle:
        //             r = [ .aa ]
        //
        //        case .kako:
        //             r = [ .aa ]
        //
        //        case .kalaallisut:
        //             r = [ .aa ]
        //
        //        case .kalenjin:
        //             r = [ .aa ]
        //
        //        case .kamba:
        //             r = [ .aa ]
        //
        //        case .kannada:
        //             r = [ .aa ]
        //
        //        case .kashmiri:
        //             r = [ .aa ]
        //
        //        case .kazakh:
        //             r = [ .aa ]
        //
        //        case .khmer:
        //             r = [ .aa ]
        //
        //        case .kikuyu:
        //             r = [ .aa ]
        //
        //        case .kinyarwanda:
        //             r = [ .aa ]
        //
        //        case .konkani:
        //             r = [ .aa ]
        //
        //        case .korean:
        //             r = [ .aa ]
        //
        //        case .koyraChiini:
        //             r = [ .aa ]
        //
        //        case .koyraboroSenni:
        //             r = [ .aa ]
        //
        //        case .kwasio:
        //             r = [ .aa ]
        //
        //        case .kyrgyz:
        //             r = [ .aa ]
        //
        //        case .lakota:
        //             r = [ .aa ]
        //
        //        case .langi:
        //             r = [ .aa ]
        //
        //        case .lao:
        //             r = [ .aa ]
        //
        //        case .latvian:
        //             r = [ .aa ]
        //
        //        case .lingala:
        //             r = [ .aa ]
        //
        //        case .lithuanian:
        //             r = [ .aa ]
        //
        //        case .sorbian:
        //             r = [ .aa ]
        //
        //        case .lubaKatanga:
        //             r = [ .aa ]
        //
        //        case .luo:
        //             r = [ .aa ]
        //
        //        case .luxembourgish:
        //             r = [ .aa ]
        //
        //        case .luyia:
        //             r = [ .aa ]
        //
        //        case .macedonian:
        //             r = [ .aa ]
        //
        //        case .machame:
        //             r = [ .aa ]
        //
        //        case .makhuwaMeetto:
        //             r = [ .aa ]
        //
        //        case .makonde:
        //             r = [ .aa ]
        //
        //        case .malagasy:
        //             r = [ .aa ]
        //
        //        case .malay:
        //             r = [ .aa ]
        //
        //        case .maltese:
        //             r = [ .aa ]
        //
        //        case .manx:
        //             r = [ .aa ]
        //
        //        case .marathi:
        //             r = [ .aa ]
        //
        //        case .masai:
        //             r = [ .aa ]
        //
        //        case .meru:
        //             r = [ .aa ]
        //
        //        case .meta:
        //             r = [ .aa ]
        //
        //        case .mongolian:
        //             r = [ .aa ]
        //
        //        case .morisyen:
        //             r = [ .aa ]
        //
        //        case .mundang:
        //             r = [ .aa ]
        //
        //        case .nama:
        //             r = [ .aa ]
        //
        //        case .nepali:
        //             r = [ .aa ]
        //
        //        case .ngiemboon:
        //             r = [ .aa ]
        //
        //        case .ngomba:
        //             r = [ .aa ]
        //
        //        case .northNdebele:
        //             r = [ .aa ]
        //
        //        case .northernSami:
        //             r = [ .aa ]
        //
        //        case .norwegian:
        //             r = [ .aa ]
        //
        //        case .nuer:
        //             r = [ .aa ]
        //
        //        case .nyankole:
        //             r = [ .aa ]
        //
        //        case .oriya:
        //             r = [ .aa ]
        //
        //        case .oromo:
        //             r = [ .aa ]
        //
        //        case .ossetic:
        //             r = [ .aa ]
        //
        //        case .pashto:
        //             r = [ .aa ]
        //
        //        case .persian:
        //             r = [ .aa ]
        //
        //        case .polish:
        //             r = [ .aa ]
        //
        //        case .punjabi:
        //             r = [ .aa ]
        //
        //        case .quechua:
        //             r = [ .aa ]
        //
        //        case .romanian:
        //             r = [ .aa ]
        //
        //        case .romansh:
        //             r = [ .aa ]
        //
        //        case .rombo:
        //             r = [ .aa ]
        //
        //        case .rundi:
        //             r = [ .aa ]
        //
        //        case .russian:
        //             r = [ .aa ]
        //
        //        case .rwa:
        //             r = [ .aa ]
        //
        //        case .sakha:
        //             r = [ .aa ]
        //
        //        case .samburu:
        //             r = [ .aa ]
        //
        //        case .sango:
        //             r = [ .aa ]
        //
        //        case .sangu:
        //             r = [ .aa ]
        //
        //        case .scottishGaelic:
        //             r = [ .aa ]
        //
        //        case .sena:
        //             r = [ .aa ]
        //
        //        case .serbian:
        //             r = [ .aa ]
        //
        //        case .shambala:
        //             r = [ .aa ]
        //
        //        case .shona:
        //             r = [ .aa ]
        //
        //        case .sichuanYi:
        //             r = [ .aa ]
        //
        //        case .sinhala:
        //             r = [ .aa ]
        //
        //        case .slovak:
        //             r = [ .aa ]
        //
        //        case .slovenian:
        //             r = [ .aa ]
        //
        //        case .soga:
        //             r = [ .aa ]
        //
        //        case .somali:
        //             r = [ .aa ]
        //
        //        case .standardMoroccanTamazight:
        //             r = [ .aa ]
        //
        //        case .swahili:
        //             r = [ .aa ]
        //
        //        case .swedish:
        //             r = [ .aa ]
        //
        //        case .swissGerman:
        //             r = [ .aa ]
        //
        //        case .tachelhit:
        //             r = [ .aa ]
        //
        //        case .taita:
        //             r = [ .aa ]
        //
        //        case .tajik:
        //             r = [ .aa ]
        //
        //        case .tamil:
        //             r = [ .aa ]
        //
        //        case .tasawaq:
        //             r = [ .aa ]
        //
        //        case .telugu:
        //             r = [ .aa ]
        //
        //        case .teso:
        //             r = [ .aa ]
        //
        //        case .thai:
        //             r = [ .aa ]
        //
        //        case .tibetan:
        //             r = [ .aa ]
        //
        //        case .tigrinya:
        //             r = [ .aa ]
        //
        //        case .tongan:
        //             r = [ .aa ]
        //
        //        case .turkish:
        //             r = [ .aa ]
        //
        //        case .centralKurdish:
        //             r = [ .aa ]
        //
        //        case .turkmen:
        //             r = [ .aa ]
        //
        //        case .ukrainian:
        //             r = [ .aa ]
        //
        //        case .urdu:
        //             r = [ .aa ]
        //
        //        case .uyghur:
        //             r = [ .aa ]
        //
        //        case .uzbek:
        //             r = [ .aa ]
        //
        //        case .vai:
        //             r = [ .aa ]
        //
        //        case .vietnamese:
        //             r = [ .aa ]
        //
        //        case .vunjo:
        //             r = [ .aa ]
        //
        //        case .walser:
        //             r = [ .aa ]
        //
        //        case .welsh:
        //             r = [ .aa ]
        //
        //        case .westernFrisian:
        //             r = [ .aa ]
        //
        //        case .yangben:
        //             r = [ .aa ]
        //
        //        case .yiddish:
        //             r = [ .aa ]
        //
        //        case .yoruba:
        //             r = [ .aa ]
        //
        //        case .zarma:
        //             r = [ .aa ]
        //
        //        case .zulu:
        //             r = [ .aa ]
        //
        }
        return r.set
    }
}


public extension Array where Element == LangL {
    
    var langLIDs: Set<LangLID> {
        map{$0.langLIDs}.flatMap{$0}.set
    }
}

public extension Set where Element == LangL {
    
    var langLIDs: Set<LangLID> {
        array.langLIDs
    }
}
