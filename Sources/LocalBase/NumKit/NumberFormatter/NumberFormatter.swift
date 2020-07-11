

public extension NumberFormatter {
    private static let _shared = NumberFormatter()
    
    static func shared(numStyle: Style = .none,
                       roundingMode: RoundingMode = .down,
                       usesGroupingSeparator: Bool = false,
                       minFractionDigits: Int = 0,
                       maxFractionDigits: Int = 10,
                       _ locale: LID = .current) -> NumberFormatter {
        
        let fmtr = _shared
        fmtr.numberStyle = numStyle
        fmtr.locale = locale.locale
        fmtr.roundingMode = roundingMode
        fmtr.usesGroupingSeparator = usesGroupingSeparator
        fmtr.minimumFractionDigits = minFractionDigits
        fmtr.maximumFractionDigits = maxFractionDigits
        return fmtr
    }
    
    var lid: LID {
        get {
            locale.lid
        }
        set {
            locale = newValue.locale
        }
    }
    
    /// does not nullify
    var numFormat: NumFormat? {
        get {
            NumFormat(numberStyle)
        }
        set {
            if let a = newValue?.numStyle {
                numberStyle = a
            }
        }
    }
    
    func str(from number: NSNumber) -> Str {
        string(from: number)!
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
}



//
//    //MARK: - number from Str
//
//    static func double(from str: Str,
//                numStyle: Style = .none,
//                usesGroupingSeparator: Bool = false,
//                _ locale: LIDP = LID.englishUnitedStates) -> Double? {
//
//            let numStyle1 = self.numberStyle
//            let usesGroupingSeparator1 = self.usesGroupingSeparator
//            let locale1 = self.locale
//
//            var r: Double?
//            switch numStyle {
//            case .none, .decimal:
//                r = number(from: str)?.doubleValue
//            case .spellOut:
//                interDoubleAsWord(str, with: locale)
//            case .ordinal:
//                r = .ordinal
//            case .scientific:
//                r = .scientific
//            }
//
//        return r
//
//        //        roundingMode: NumRoundingMode = .down,
//        //        minFractionDigits: Int = 0,
//        //        maxFractionDigits: Int = 10,
//        //
//        //        setFormat(numStyle,
//        //                  roundingMode:roundingMode,
//        //                  usesGroupingSeparator:usesGroupingSeparator,
//        //                  minFractionDigits:minFractionDigits,
//        //                  maxFractionDigits:maxFractionDigits,
//        //                  locale)
//    }
//
//    //TODO: make static ??
//    /// doesn't change fmtr's parameters
//    func double(from str: Str,
//                numStyle: Style = .none,
//                usesGroupingSeparator: Bool = false,
//                possibleLIDs: Set<LID> = LID.allForms) -> Double? {
//        possibleLIDs.first(where: {
//            double(from: str,
//                   numStyle: numStyle,
//                   usesGroupingSeparator:usesGroupingSeparator)
//        })
//    }
//
//
//    //MARK: - interNumberAsWord
//
//    //TODO: use more params
//
//    /// interprets the given number as word, for ex. "one
//    func interNumberAsWord(_ str: Str,
//                           with lid: LID) -> NSNumber? {
//        setSpellOutFormat(with: lid)
//        return number(from: str)
//    }
//
//    /// interprets the given number as word, for ex. "one
//    func interDoubleAsWord(_ str: Str,
//                           with lid: LID) -> Double? {
//        interNumberAsWord(str,
//                          with: lid)?.doubleValue
//    }
//
//
//    /// interprets the given number as word, for ex. "one
//    func interNumberAsWord(_ str: Str,
//                        possibleLIDs: Set<LID> = LID.allForms) -> NSNumber? {
//        for locale in possibleLIDs {
//            if let num = interNumberAsWord(str, with: locale) {
//                return num
//            }
//        }
//        return nil
//    }
//
//    /// interprets the given number as word, for ex. "one"
//    func interDoubleAsWord(_ str: Str,
//                           with possibleLIDs: Set<LID> = LID.allForms) -> Double? {
//        interNumberAsWord(str,
//                          with: possibleLIDs)?.doubleValue
//    }
//
//    //MARK: - spellOut
//
//    static func spellOut(_ num: NSNumber,
//                  with lid: LID) -> Str {
//        let style = numberStyle
//        setSpellOutFormat(with: lid)
//        let words = str(from: num)!
//        numberStyle = style
//        return words
//    }
//
//    func spellOut(_ num: Double,
//                  with lid: LID) -> Str {
//        spellOut(NSNumber(value: num), with: lid)
//    }
//
//
//
//    //MARK: -  str(from num
//
//    func str(from num: Double) -> Str {
//        //        numStyle: Style = .none,
//        //        roundingMode: NumRoundingMode = .down,
//        //        usesGroupingSeparator: Bool = false,
//        //        minFractionDigits: Int = 0,
//        //        maxFractionDigits: Int = 10,
//        //        _ locale: LIDP = LID.englishUnitedStates
//        //        setFormat(numStyle,
//        //                  roundingMode:roundingMode,
//        //                  usesGroupingSeparator:usesGroupingSeparator,
//        //                  minFractionDigits:minFractionDigits,
//        //                  maxFractionDigits:maxFractionDigits,
//        //                  locale)
//        str(from: NSNumber(value: num))!
//    }
//
//
//    func str(from num: Int) -> Str {
//        str(from: Double(num))
//    }
//
//    func str(from decimal: Decimal) -> Str {
//        str(from: decimal as NSDecimalNumber)!
//    }
//
//    //MARK: -
//
//    // consider using NumberFormat
//    func setFormat(_ numFormat: Style = .decimal,
//                   roundingMode: NumRoundingMode = .down,
//                   usesGroupingSeparator: Bool = false,
//                   minFractionDigits: Int = 0,
//                   maxFractionDigits: Int = 10,
//                   _ locale: LIDP = LID.englishUnitedStates) {
//        self.numberStyle = numFormat.numStyle
//        self.locale = locale.locale
//
//        self.roundingMode = roundingMode
//        self.usesGroupingSeparator = usesGroupingSeparator
//        self.minimumFractionDigits = minFractionDigits
//        self.maximumFractionDigits = maxFractionDigits
//    }
//

//
//    //TODO: add more params
//    func setSpellOutFormat(with lid: LID) {
//        self.numberStyle = .spellOut
//        self.lid = lid
//    }
//}
//
