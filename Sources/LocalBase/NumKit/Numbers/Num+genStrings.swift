

public extension Double {

    /// Note: computing intensive !
    static func genStrings(min: Double = 0.1,
                           max: Double = 1000000,
                           step: Double = 0.1,
                           
                           numFormat: NumFormat = .decimal,
                           roundingMode: NumRoundingMode = .down,
                           usesGroupingSeparator: Bool = false,
                           minFractionDigits: Int = 0,
                           maxFractionDigits: Int = 10,
                           _ locale: LIDP = LID.current) -> Set<Str> {
        
        stride(from: min, through: max, by: step).map {
            $0.str(numFormat: numFormat,
                   roundingMode: roundingMode,
                   usesGroupingSeparator: usesGroupingSeparator,
                   minFractionDigits: minFractionDigits,
                   maxFractionDigits: maxFractionDigits,
                   locale)
        }.set
    }
    
    /// Note: computing intensive !
    static func allStrings(numFormat: NumFormat = .decimal,
                           roundingMode: NumRoundingMode = .down,
                           usesGroupingSeparator: Bool = false,
                           minFractionDigits: Int = 0,
                           maxFractionDigits: Int = 10,
                           _ locale: LIDP = LID.current) -> Set<Str> {
        allForms.map {
            $0.str(numFormat: numFormat,
                   roundingMode: roundingMode,
                   usesGroupingSeparator: usesGroupingSeparator,
                   minFractionDigits: minFractionDigits,
                   maxFractionDigits: maxFractionDigits,
                   locale)
        }.set
    }
    
    //TODO: array of possible values for options
    init?(_ str: Str,
          min: Double = 0.1,
          max: Double = 1000000,
          step: Double = 0.1,
          
          numFormat: NumFormat = .decimal,
          roundingMode: NumRoundingMode = .down,
          usesGroupingSeparator: Bool = false,
          minFractionDigits: Int = 0,
          maxFractionDigits: Int = 10,
          _ locale: LIDP = LID.current) {
        
        if let a = stride(from: min,
                          through: max,
                          by: step).first(where: {
                            
                            $0.str(numFormat: numFormat,
                                   roundingMode: roundingMode,
                                   usesGroupingSeparator: usesGroupingSeparator,
                                   minFractionDigits: minFractionDigits,
                                   maxFractionDigits: maxFractionDigits,
                                   locale) == str
                          }) {
            self = a
        } else {
            return nil
        }
    }
}


public extension Int {
    
    /// Note: computing intensive !
    static func genStrings(min: Int = 1,
                           max: Int = 1000000,
                           step: Int = 1,
                           
                           numFormat: NumFormat = .decimal,
                           roundingMode: NumRoundingMode = .down,
                           usesGroupingSeparator: Bool = false,
                           minFractionDigits: Int = 0,
                           maxFractionDigits: Int = 10,
                           _ lid: LIDP = LID.current) -> Set<Str> {
        
        stride(from: min, through: max, by: step).map {
            $0.str(numFormat: numFormat,
                   roundingMode: roundingMode,
                   usesGroupingSeparator: usesGroupingSeparator,
                   minFractionDigits: minFractionDigits,
                   maxFractionDigits: maxFractionDigits,
                   lid)
        }.set
    }
    
    /// Note: computing intensive !
    static func allStrings(numFormat: NumFormat = .decimal,
                           roundingMode: NumRoundingMode = .down,
                           usesGroupingSeparator: Bool = false,
                           minFractionDigits: Int = 0,
                           maxFractionDigits: Int = 10,
                           _ lid: LIDP = LID.current) -> Set<Str> {
        allForms.map {
            $0.str(numFormat: numFormat,
                   roundingMode: roundingMode,
                   usesGroupingSeparator: usesGroupingSeparator,
                   minFractionDigits: minFractionDigits,
                   maxFractionDigits: maxFractionDigits,
                   lid)
        }.set
    }
    
    //TODO: array of possible values for options
    init?(_ str: Str,
          min: Int = 1,
          max: Int = 1000000,
          step: Int = 1,
          
          numFormat: NumFormat = .decimal,
          roundingMode: NumRoundingMode = .down,
          usesGroupingSeparator: Bool = false,
          minFractionDigits: Int = 0,
          maxFractionDigits: Int = 10,
          _ lid: LIDP = LID.current) {
        
        if let a = stride(from: min,
                          through: max,
                          by: step).first(where: {
                            
                            $0.str(numFormat: numFormat,
                                   roundingMode: roundingMode,
                                   usesGroupingSeparator: usesGroupingSeparator,
                                   minFractionDigits: minFractionDigits,
                                   maxFractionDigits: maxFractionDigits,
                                   lid) == str
                          }) {
            self = a
        } else {
            return nil
        }
    }
}


public extension Decimal {
    
    /// ! uses a limited set of numbers to check
    init?(_ str: Str,
          _ locale: LIDP = LID.current) {
        
        if let double = Double(str, locale) {
            self.init(double)
        } else {
            return nil
        }
        //  ? only can handle cardinal numbers ?? -> useless
        //self.init(string: str, locale: locale.locale)
    }
}


