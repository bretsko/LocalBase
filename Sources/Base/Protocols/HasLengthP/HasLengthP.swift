


// used by MeasurableIntervalT

/// Measurable
public protocol HasLengthP {
    /// > 0
    var length: Double {get}
}
  
public extension HasLengthP {

    var hasMinLength: Bool {
        return length == 0.0
    }
    
    func isLonger(than other: Self) -> Bool {
        return length > other.length
    }
    func isShorter(than other: Self) -> Bool {
        return other.length < length
    }
    func isEquallyLong(as other: Self) -> Bool {
        return length == other.length
    }
}


public protocol HasMeasurableTypeT: HasUnitTypeT {
    associatedtype Unit: HasLengthP
}

/// length comparable
public protocol LengthCmpT: HasLengthP, Comparable {}
public extension LengthCmpT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.length < rhs.length
    }
}



public func isValidLength(_ num: Double) -> Bool {
    return num >= 0.0 && num <= 1.0
}
