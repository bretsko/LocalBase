


public protocol HasPriorityP {
    /// 0.0 - 1.0
    var priority: Double {get}
}

public extension HasPriorityP {
    
    var hasMaxPriority: Bool {
        return priority == 1.0
    }
    var hasMinPriority: Bool {
        return priority == 0.0
    }
    
    func hasMorePriority(than other: Self) -> Bool {
        return priority > other.priority
    }
    func hasLessPriority(than other: Self) -> Bool {
        return priority < other.priority
    }
    func hasEqualPriority(as other: Self) -> Bool {
        return priority == other.priority
    }
}

public protocol PriorityComparableT: HasPriorityP, Comparable {}
public extension PriorityComparableT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.priority < rhs.priority
    }
}


public func isValidPriority(_ num: Double) -> Bool {
    return num >= 0.0 && num <= 1.0
}
