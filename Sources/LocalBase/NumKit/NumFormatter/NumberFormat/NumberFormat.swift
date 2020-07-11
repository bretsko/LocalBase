

public typealias NumRoundingMode = NumberFormatter.RoundingMode


typealias NumberFormatT = HasAllFormsT & HasLID & NumFormatterStyleConvertibleT

public struct NumberFormat: NumberFormatT {
    
    public var numFormat: NumFormat
    public var roundingMode: NumRoundingMode
    public var usesGroupingSeparator: Bool
    public var minFractionDigits: Int
    public var maxFractionDigits: Int
    
    public var lid: LID
}

public extension NumberFormat {
    
    init(numFormat: NumFormat = .none,
         roundingMode: NumRoundingMode = .down,
         usesGroupingSeparator: Bool = false,
         minFractionDigits: Int = 0,
         maxFractionDigits: Int = 10,
         _ lid: LID = .englishUS) {
        self.numFormat = numFormat
        self.roundingMode = roundingMode
        self.usesGroupingSeparator = usesGroupingSeparator
        self.minFractionDigits = minFractionDigits
        self.maxFractionDigits = maxFractionDigits
        self.lid = lid
    }
    
    init(numFormat: NumFormat = .none,
         roundingMode: NumRoundingMode = .down,
         usesGroupingSeparator: Bool = false,
         minFractionDigits: Int = 0,
         maxFractionDigits: Int = 10,
         _ lid: LIDP) {
        self.init(numFormat: numFormat,
                  roundingMode:roundingMode,
                  usesGroupingSeparator:usesGroupingSeparator,
                  minFractionDigits:minFractionDigits,
                  maxFractionDigits:maxFractionDigits,
                  LID(lid))
    }
    
    
    static var allForms: Set<Self> {
        NumFormat.allForms.map { numFormat in
            LID.allForms.map { lid in
                //TODO:
                //roundingMode: NumRoundingMode = .down,
                //usesGroupingSeparator: Bool = false,
                //usesGroupingSeparator: Bool = false,
                //minFractionDigits: Int = 0,
                //maxFractionDigits: Int = 10,
                Self(numFormat: numFormat, lid)
            }
        }.flatMap{$0}.set
    }
    
    
    // NumFormatterStyleConvertibleT
    
    var numStyle: NumFormatterStyle {
        numFormat.numStyle
    }
    
    init?(_ numStyle: NumFormatterStyle) {
        guard let numFormat = NumFormat(numStyle) else {
            return nil
        }
        self.init(numFormat: numFormat)
    }
}



