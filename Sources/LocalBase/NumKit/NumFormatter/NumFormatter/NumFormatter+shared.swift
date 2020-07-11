


public extension NumFormatter {
    private static let _shared = NumFormatter()
    
    static func shared(numFormat: NumFormat = .none,
                       roundingMode: NumRoundingMode = .down,
                       usesGroupingSeparator: Bool = false,
                       minFractionDigits: Int = 0,
                       maxFractionDigits: Int = 10,
                       _ lid: LIDP = LID.englishUS) -> NumFormatter {
        
        let fmtr = _shared
        fmtr.setFormat(numFormat,
                       roundingMode:roundingMode,
                       usesGroupingSeparator:usesGroupingSeparator,
                       minFractionDigits:minFractionDigits,
                       maxFractionDigits:maxFractionDigits,
                       lid)
        return fmtr
    }
    
    static func shared(_ format: NumberFormat) -> NumFormatter {
        shared(numFormat: format.numFormat,
               roundingMode: format.roundingMode,
               usesGroupingSeparator: format.usesGroupingSeparator,
               minFractionDigits: format.minFractionDigits,
               maxFractionDigits: format.maxFractionDigits,
               format.lid)
    }
}
