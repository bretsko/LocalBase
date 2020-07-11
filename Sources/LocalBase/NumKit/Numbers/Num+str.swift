

public extension Double {
    
    func str(numFormat: NumFormat = .decimal,
             roundingMode: NumRoundingMode = .down,
             usesGroupingSeparator: Bool = false,
             minFractionDigits: Int = 0,
             maxFractionDigits: Int = 10,
             _ lid: LIDP = LID.current) -> Str {
        
        NumFormatter.shared(numFormat: numFormat,
                            roundingMode: roundingMode,
                            usesGroupingSeparator: usesGroupingSeparator,
                            minFractionDigits: minFractionDigits,
                            maxFractionDigits: maxFractionDigits,
                            lid).str(from: self)
    }
}


public extension Int {
    
    func str(numFormat: NumFormat = .none,
             roundingMode: NumRoundingMode = .down,
             usesGroupingSeparator: Bool = false,
             minFractionDigits: Int = 0,
             maxFractionDigits: Int = 10,
             _ lid: LIDP = LID.current) -> Str {
        
        NumFormatter.shared(numFormat: numFormat,
                            roundingMode: roundingMode,
                            usesGroupingSeparator: usesGroupingSeparator,
                            minFractionDigits: minFractionDigits,
                            maxFractionDigits: maxFractionDigits,
                            lid).str(from: self)
    }
}

public extension Decimal {
    
    func str(numFormat: NumFormat = .decimal,
             roundingMode: NumRoundingMode = .down,
             minFractionDigits: Int = 0,
             maxFractionDigits: Int = 10,
             usesGroupingSeparator: Bool = false,
             _ locale: LIDP = LID.current) -> Str? {
        
        NumFormatter.shared(numFormat: numFormat,
                            roundingMode: roundingMode,
                            usesGroupingSeparator: usesGroupingSeparator,
                            minFractionDigits: minFractionDigits,
                            maxFractionDigits: maxFractionDigits,
                            locale).str(from: self)
    }
}


