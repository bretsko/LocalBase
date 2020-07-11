

//TODO: consider hiding NumFormatter -> compeletely new interface

/// subclassed only to override func to make string with spellout numstyle, which somehow is not supported
public final class NumFormatter {
    
    //somehow NumFormatter doesn't allow changing numberStyle (setter ignores any values), so I have to make my own
    let fmtr = NumberFormatter()
    
    public init(numFormat: NumFormat = .none,
                roundingMode: NumRoundingMode = .down,
                usesGroupingSeparator: Bool = false,
                minFractionDigits: Int = 0,
                maxFractionDigits: Int = 10,
                _ locale: LIDP = LID.englishUS) {
        setFormat(numFormat,
                  roundingMode:roundingMode,
                  usesGroupingSeparator:usesGroupingSeparator,
                  minFractionDigits:minFractionDigits,
                  maxFractionDigits:maxFractionDigits,
                  locale)
    }
}

public extension NumFormatter {
    
    var lid: LID {
        get {
            fmtr.locale.lid
        }
        set {
            fmtr.locale = newValue.locale
        }
    }
    
    var roundingMode: NumRoundingMode {
        get {
            fmtr.roundingMode
        }
        set {
            fmtr.roundingMode = newValue
        }
    }
    
    var usesGroupingSeparator: Bool {
        get {
            fmtr.usesGroupingSeparator
        }
        set {
            fmtr.usesGroupingSeparator = newValue
        }
    }
    
    var minFractionDigits: Int {
        get {
            fmtr.minimumFractionDigits
        }
        set {
            fmtr.minimumFractionDigits = newValue
        }
    }
    
    var maxFractionDigits: Int {
        get {
            fmtr.maximumFractionDigits
        }
        set {
            fmtr.maximumFractionDigits = newValue
        }
    }
    
    var numFormat: NumFormat {
        get  {
            NumFormat(numberStyle)!
        }
        set {
            numberStyle = newValue.numStyle
        }
    }
    
    private var numberStyle: NumFormatterStyle {
        get {
            fmtr.numberStyle
        }
        set {
            fmtr.numberStyle = newValue
        }
    }
    
    //MARK: -
    
    var format: NumberFormat {
        get {
            NumberFormat(numFormat: numFormat,
                         roundingMode: roundingMode,
                         usesGroupingSeparator: usesGroupingSeparator,
                         minFractionDigits: minFractionDigits,
                         maxFractionDigits: maxFractionDigits,
                         lid)
        }
        set {
            numberStyle = newValue.numFormat.numStyle
            roundingMode = newValue.roundingMode
            usesGroupingSeparator = newValue.usesGroupingSeparator
            minFractionDigits = newValue.minFractionDigits
            maxFractionDigits = newValue.maxFractionDigits
            lid = newValue.lid
        }
    }
    
    //MARK: -
    
    /// doesn't nullify, only sets new values
    func setFormat(_ numFormat: NumFormat? = nil,
                   roundingMode: NumRoundingMode? = nil,
                   usesGroupingSeparator: Bool? = nil,
                   minFractionDigits: Int? = nil,
                   maxFractionDigits: Int? = nil,
                   _ lid: LIDP? = nil) {
        if let a = numFormat {
            self.numFormat = a
        }
        if let a = lid {
            self.lid = LID(a)
        }
        if let a = roundingMode {
            self.roundingMode = a
        }
        if let a = usesGroupingSeparator {
            self.usesGroupingSeparator = a
        }
        if let a = minFractionDigits {
            self.minFractionDigits = a
        }
        if let a = maxFractionDigits {
            self.maxFractionDigits = a
        }
    }
    
    //    func setSpellOutFormat(with lid: LID) {
    //        self.numberStyle = .spellOut
    //        self.lid = lid
    //    }
}

