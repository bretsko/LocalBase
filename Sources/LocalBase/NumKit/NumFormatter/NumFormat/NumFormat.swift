

/// see https://developer.apple.com/documentation/foundation/numberformatter/style
public enum NumFormat: Str, StrEnumT, NumFormatterStyleConvertibleT {
    
    ///US: 1235
    ///FR: 1235
    ///CN: 1235
    case none
    
    ///US: 1,234.568
    ///FR: 1 234,568
    ///CN: 1,234.568
    case decimal

    ///US: one hundred twenty-three
    ///FR: cent vingt-trois
    ///CN: 一百二十三
    case spellOut
    
    ///US: 3rd
    ///FR: 3e
    ///CN: 第3
    case ordinal
    
    
    ///US: 1.2345678E3
    ///FR: 1,2345678E3
    ///CN: 1.2345678E3
    case scientific
}

public extension NumFormat {
    
    // NumFormatterStyleConvertibleT
    var numStyle: NumFormatterStyle {
        switch self {
        case .none:
            return .none
        case .decimal:
            return .decimal
        case .spellOut:
            return .spellOut
        case .ordinal:
            return .ordinal
        case .scientific:
            return .scientific
        }
    }
}

