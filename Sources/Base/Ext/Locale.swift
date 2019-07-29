
import Foundation


extension Locale {
    
    /// Returns a list of common `Locale` ISO language codes.
    static var commonISOLanguageCodes: [Str] {
        return ["en", "fr", "de", "ja", "nl", "it", "es", "da", "fi", "no", "sv", "ko", "zh", "ru", "pl", "pt", "id", "tr", "hu", "el", "ca", "bs", "hr", "sr", "hi", "th", "ms", "cs", "sk", "vi", "ro", "uk", "ar", "he", "sl"].sorted()
    }
    
    ///  UNIX representation of locale usually used for normalizing.
    static var posix: Locale {
        return Locale(identifier: "en_US_POSIX")
    }
    
    var topPreferredLanguage: Str {
        return Locale.preferredLanguages[0]
    }
    
    var topPreferredCountryCode: Str {
        let l = Locale(identifier: topPreferredLanguage)
        return (l as NSLocale).object(forKey: NSLocale.Key.countryCode) as! Str
    }
    
    static let USA = Locale(identifier: "en_US")
    static let Ukraine = Locale(identifier: "uk_UA")
    
    //    static let UK = Locale(identifier: "en_UK")
    //    static let German = Locale(identifier: "de_DE")
    //    static let France = Locale(identifier: "fr_FR")
    //    static let Japan = Locale(identifier: "jp_JP")
    //    static let Canada = Locale(identifier: "en_CA")
    //    static let Italy = Locale(identifier: "it_IT")
    //    static let Russia = Locale(identifier: "ru_RU")
    //
    //    //CHN
    //    static let China = Locale(identifier: "zh_CN")
    //    static let HongKong = Locale(identifier: "zh_HK")
    //    static let Macao = Locale(identifier: "zh_MO")
    //    static let Taiwan = Locale(identifier: "zh_TW")
    //
    //    //asia
    //    static let Israel = Locale(identifier: "he_IL")
    //    static let Australia = Locale(identifier: "en_AU")
    //    static let Korean = Locale(identifier: "kr_KR")
    //    static let India = Locale(identifier: "en_IN")
    //    static let SaudiArabia = Locale(identifier: "ar_SA")
    //    static let Singapore = Locale(identifier: "en_SG")
    //    static let Indonesia = Locale(identifier: "en_ID")
    //    static let Malaysia = Locale(identifier: "en_MY")
    //    static let Thailand = Locale(identifier: "th_TH")
    //    static let Vietnam = Locale(identifier: "zh_VN")
    //    static let Philippines = Locale(identifier: "en_PH")
    //    static let Laos = Locale(identifier: "lo_LA")
    //    static let Turkey = Locale(identifier: "tr_TR")
    //
    //    //americans
    //    static let Mexico = Locale(identifier: "es_MX")
    //    static let Brazil = Locale(identifier: "en_BR")
    //    static let Argentina = Locale(identifier: "en_AR")
    //
    //    //Africas
    //    static let Egypt = Locale(identifier: "ar_EG")
    //    static let SouthAfrica = Locale(identifier: "zu_ZA")
    
}
