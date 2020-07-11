

/// currently covers English, Rus, Ukr
/// For languages which dont differentiate  twoThreeFour and plural, they mean the same, for ex for English
public enum CurrencyPlurality: Str, StrEnumT {
    
    // 1 доллар
    case singular
    
    // 2,3,4 доллара (for Rus, Ukr)
    case twoThreeFour
    
    // 6 долларов
    case plural
}

public extension Double {
    
    var plurality: CurrencyPlurality {
        if self == 1 {
            return .singular
        } else if self >= 2 && self < 5  {
            return .twoThreeFour
        }
        return .plural
    }
}

//public extension CurrencyPlurality {
//
//    /// plural or twoThreeFour = plural in English
//    var isNotSingular: Bool {
//        self != .singular
//    }
//}
