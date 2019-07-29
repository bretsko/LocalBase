

public protocol HasWeightP {
    var weight: Double {get}
}
public extension HasWeightP {
    
    var hasMinWeight: Bool {
        return weight == 0.0
    }
    func hasMoreWeight(than other: Self) -> Bool {
        return weight > other.weight
    }
    func hasLessWeight(than other: Self) -> Bool {
        return weight < other.weight
    }
    func hasEqualWeight(as other: Self) -> Bool {
        return weight == other.weight
    }
}


public protocol WeightComparableT: HasWeightP, Comparable {}
public extension WeightComparableT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.weight < rhs.weight
    }
}
