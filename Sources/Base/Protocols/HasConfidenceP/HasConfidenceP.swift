


public protocol HasConfidenceP {
    /// 0.0 - 1.0
    var confidence: Double {get}
}
public extension HasConfidenceP {
    var hasMaxConfidence: Bool {
        return confidence == 1.0
    }
    var hasMinConfidence: Bool {
        return confidence == 0.0
    }
}



public protocol ConfidenceComparableT: HasConfidenceP, Comparable {}
public extension ConfidenceComparableT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.confidence < rhs.confidence
    }
}

public func isValidConfidence(_ num: Double) -> Bool {
    return num >= 0.0 && num <= 1.0
}
