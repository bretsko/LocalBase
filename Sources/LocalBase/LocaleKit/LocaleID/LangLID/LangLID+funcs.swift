

public extension LangLID {
    
    var lid: LID {
        .lang(self)
    }
    
    func langName(translatedInto lid: LangLID) -> Str {
        lid.transl(langCode: langCode!)!
        //        if let code = langCode {
        //            return lid.localizedString(forLanguageCode: code)!
        //        }
        //        return nil
    }
    
    //TODO: try use preferredLangCodes
    //static var preferredLangLIDs: [LangLID] {
    
    //MARK: -
    
    //    // checks all possible values in given langs
    //    static func detectLang(langStr: Str,
    //                           possibleLangs: Set<LangLID> = LangLID.allForms) -> Set<LangLID>? {
    //        fatalError()
    //    }
    //
    //    // checks all possible values in given langs
    //    static func detectLang(langCurrency: Str,
    //                           possibleLangs: Set<LangLID> = LangLID.allForms) -> Set<LangLID>? {
    //        possibleLangs.filter { langLID in
    //
    //        }.sth?.set
    //        //fatalError()
    //    }
    //
    //    // checks all possible values in given langs
    //    static func detectLang(langCountry: Str,
    //                           possibleLangs: Set<LangLID> = LangLID.allForms) -> Set<LangLID>? {
    //        fatalError()
    //    }
    
    
    //TODO:
    // checks all possible values in given langs
    //    static func isLang(_ str: Str, possibleLangs: Set<LangLID>) -> Bool
    //
    //    // checks all possible values in given langs
    //    static func isCurrency(_ str: Str, possibleLangs: Set<LangLID>) -> Bool
    //
    //    // checks all possible values in given langs
    //    static func isCountry(_ str: Str, possibleLangs: Set<LangLID>) -> Bool
    
}



// all lang values (currently supported by Locale)
//Aghem
//Akan
//Asụsụ Igbo
//Chimakonde
//Dholuo
//Ekegusii
//English
//Filipino
//Frysk
//Gaelg
//Hausa
//Hibena
//Ichibemba
//Ikirundi
//Ishisangu
//Kalenjin
//Khoekhoegowab
//Kihorombo
//Kikamba
//Kimachame
//Kipare
//Kiruwa
//Kisampur
//Kishambaa
//Kiswahili
//Kitaita
//Kiteso
//Koyra ciini
//Koyraboro senni
//Kwasio
//Kyivunjo
//Kölsch
//Kĩembu
//Kĩmĩrũ
//Kɨlaangi
//Lakȟólʼiyapi
//Luganda
//Luluhia
//MUNDAŊ
//Maa
//Makua
//Ndaꞌa
//Olusoga
//Pulaar
//Rukiga
//Runasimi
//Runyankore
//Schwiizertüütsch
//Shwóŋò ngiembɔɔn
//Tamaziɣt n laṭlaṣ
//Taqbaylit
//Tasawaq senni
//Thok Nath
//Vai
//Walser
//Zarmaciine
//anarâškielâ
//dansk
//dolnoserbšćina
//duálá
//esperanto
//ewondo
//furlan
//hornjoserbšćina
//isiNdebele
//isiZulu
//joola
//kabuverdianu
//kakɔ
//kalaallisut
//kreol morisien
//lingála
//metaʼ
//norsk bokmål
//nuasue
//nynorsk
//rikpa
//rumantsch
//sena
//shqip
//Èdè Yorùbá
//Ɓàsàa
//Ɓàsàa
//ʻŌlelo Hawaiʻi
//Ελληνικά
//ирон
//саха тыла
//қазақ тілі
//հայերեն
//հայերեն
//ייִדיש
//עברית
//עברית
//اردو
//العربية، النجدية
//فارسی
//کوردیی ناوەندی
//کٲشُر
//कोंकणी
//बरʼ
//हिन्दी
//ଓଡ଼ିଆ
//తెలుగు
//ລາວ
//ქართული
//ትግርኛ
//ᏣᎳᎩ
//ᐃᓄᒃᑎᑐᑦ
//ⵜⴰⵎⴰⵣⵉⵖⵜ
//ⵜⴰⵎⴰⵣⵉⵖⵜ
//ⵜⴰⵛⵍⵃⵉⵜ
//中文
//廣東話
//日本語
//ꆈꌠꉙ
//ꆈꌠꉙ
//ꕙꔤ
//ꕙꔤ
//한국어
//𑄌𑄋𑄴𑄟𑄳𑄦




