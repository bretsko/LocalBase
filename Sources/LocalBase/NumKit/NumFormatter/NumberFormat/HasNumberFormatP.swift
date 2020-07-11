



public protocol HasNumberFormatP {
    
    var numberFormat: NumberFormat {get set}
}

public extension HasNumberFormatP {
    
    var numFormat: NumFormat {
        get  {
            numberFormat.numFormat
        }
        set {
            numberFormat.numFormat = newValue
        }
    }
    
    var roundingMode: NumRoundingMode {
        get  {
            numberFormat.roundingMode
        }
        set {
            numberFormat.roundingMode = newValue
        }
    }
    
    var usesGroupingSeparator: Bool {
        get  {
            numberFormat.usesGroupingSeparator
        }
        set {
            numberFormat.usesGroupingSeparator = newValue
        }
    }
    
    var minFractionDigits: Int {
        get  {
            numberFormat.minFractionDigits
        }
        set {
            numberFormat.minFractionDigits = newValue
        }
    }
    
    var maxFractionDigits: Int {
        get  {
            numberFormat.maxFractionDigits
        }
        set {
            numberFormat.maxFractionDigits = newValue
        }
    }
    
    var lid: LID {
        get  {
            numberFormat.lid
        }
        set {
            numberFormat.lid = newValue
        }
    }
}






