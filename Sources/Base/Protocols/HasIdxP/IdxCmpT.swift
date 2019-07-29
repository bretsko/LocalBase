


public protocol IdxCmpT: HasIdxP, Comparable {}
public extension IdxCmpT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.idx < rhs.idx
    }
}

