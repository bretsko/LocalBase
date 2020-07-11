

public extension NumFormatter {
    
    func str(from number: NSNumber) -> Str {
        fmtr.str(from: number)
    }
    
    func str(from num: Double) -> Str {
        str(from: NSNumber(value: num))
    }
    
    
    func str(from num: Int) -> Str {
        str(from: Double(num))
    }
    
    func str(from decimal: Decimal) -> Str {
        str(from: decimal as NSDecimalNumber)
    }
    
    
    //MARK: - spellOut
    
    //TODO: change to LangLID or add it as conv?
    
    static func spellOut(_ num: NSNumber,
                         with lid: LID) -> Str {
        shared(numFormat: .spellOut, lid).str(from: num)
    }
    
    static func spellOut(_ num: Double,
                         with lid: LID) -> Str {
        spellOut(NSNumber(value: num), with: lid)
    }
    
    
    //MARK: - static
    
    static func str(from number: NSNumber,
                    numFormat: NumFormat = .none,
                    roundingMode: NumRoundingMode = .down,
                    usesGroupingSeparator: Bool = false,
                    minFractionDigits: Int = 0,
                    maxFractionDigits: Int = 10,
                    _ locale: LIDP = LID.englishUS) -> Str {
        let fmtr = shared(numFormat: numFormat,
                          roundingMode:roundingMode,
                          usesGroupingSeparator:usesGroupingSeparator,
                          minFractionDigits:minFractionDigits,
                          maxFractionDigits:maxFractionDigits,
                          locale)
        return fmtr.str(from: number)
    }
    
    static func str(from num: Double,
                    numFormat: NumFormat = .none,
                    roundingMode: NumRoundingMode = .down,
                    usesGroupingSeparator: Bool = false,
                    minFractionDigits: Int = 0,
                    maxFractionDigits: Int = 10,
                    _ locale: LIDP = LID.englishUS) -> Str {
        
        str(from: NSNumber(value: num),
            numFormat: numFormat,
            roundingMode:roundingMode,
            usesGroupingSeparator:usesGroupingSeparator,
            minFractionDigits:minFractionDigits,
            maxFractionDigits:maxFractionDigits,
            locale)
    }
}
