
public extension NumFormatter {
    
    /// uses all currently set params
    func number(from str: Str) -> NSNumber? {
        fmtr.number(from: str)
        //        var r: NSNumber?
        //        switch numFormat {
        //        case .none, .decimal:
        //            r = fmtr.number(from: str)
        //        case .spellOut:
        //            r = fmtr.number(from: str)
        //        case .ordinal:
        //            r = fmtr.number(from: str)
        //        case .scientific:
        //            r = fmtr.number(from: str)
        //        }
        //        return r
    }
    
    /// uses all currently set params
    func double(from str: Str) -> Double? {
        number(from:str)?.doubleValue
    }
    
    
    //MARK: - inter number as word (spellOut)

    
    //TODO: change to LangLID or add it as conv?

    /// interprets the given number as word, for ex. "one
    static func interNumberAsWord(_ str: Str,
                                  _ lid: LID) -> NSNumber? {
        let fmtr = shared()
        fmtr.setFormat(.spellOut)
        fmtr.lid = lid
        return fmtr.number(from: str)
    }
    
    /// interprets the given number as word, for ex. "one
    static func interDoubleAsWord(_ str: Str) -> Double? {
        interNumberAsWord(str)?.doubleValue
    }
    
    //MARK: -
    
    /// interprets the given number as word, for ex. "one
    static func interNumberAsWord(_ str: Str,
                                  possibleLIDs: Set<LID> = LID.allForms) -> NSNumber? {
        
        for lid in possibleLIDs {
            if let num = interNumberAsWord(str, lid) {
                return num
            }
        }
        return nil
    }
    
    /// interprets the given number as word, for ex. "one"
    static func interDoubleAsWord(_ str: Str,
                                  possibleLIDs: Set<LID> = LID.allForms) -> Double? {
        interNumberAsWord(str, possibleLIDs: possibleLIDs)?.doubleValue
    }
    
    
    //MARK: -
    
    static func number(from str: Str,
                       numFormat: NumFormat = .none,
                       usesGroupingSeparator: Bool = false,
                       minFractionDigits: Int = 0,
                       maxFractionDigits: Int = 10,
                       _ lid: LID) -> NSNumber? {
        let fmtr = shared()
        fmtr.setFormat(numFormat,
                       usesGroupingSeparator:usesGroupingSeparator,
                       minFractionDigits:minFractionDigits,
                       maxFractionDigits:maxFractionDigits,
                       lid)
        return fmtr.number(from:str)
    }
    
    static func number(from str: Str,
                       usesGroupingSeparator: Bool = false,
                       minFractionDigits: Int = 0,
                       maxFractionDigits: Int = 10,
                       possibleNumFormats: Set<NumFormat> = NumFormat.allForms,
                       _ possibleLIDs: Set<LID> = LID.allForms) -> NSNumber? {
        
        for numFormat in possibleNumFormats {
            for lid in possibleLIDs {
                if let r = number(from: str, numFormat: numFormat, usesGroupingSeparator: usesGroupingSeparator, minFractionDigits: minFractionDigits, maxFractionDigits: maxFractionDigits, lid) {
                    return r
                }
            }
        }
        return nil
    }
    
    
    //MARK: -
    
    /// doesn't change formatter's parameters
    static func double(from str: Str,
                       usesGroupingSeparator: Bool = false,
                       minFractionDigits: Int = 0,
                       maxFractionDigits: Int = 10,
                       possibleNumFormats: Set<NumFormat> = NumFormat.allForms,
                       _ possibleLIDs: Set<LID> = LID.allForms) -> Double? {
        number(from: str,
               usesGroupingSeparator: usesGroupingSeparator,
               minFractionDigits: minFractionDigits,
               maxFractionDigits: maxFractionDigits,
               possibleNumFormats: possibleNumFormats,
               possibleLIDs)?.doubleValue
    }
    
    static func double(from str: Str,
                       numFormat: NumFormat = .none,
                       usesGroupingSeparator: Bool = false,
                       minFractionDigits: Int = 0,
                       maxFractionDigits: Int = 10,
                       _ lid: LID) -> Double? {
        
        number(from:str, numFormat: numFormat,
               usesGroupingSeparator: usesGroupingSeparator,
               minFractionDigits: minFractionDigits,
               maxFractionDigits: maxFractionDigits,
               lid)?.doubleValue
    }
}

