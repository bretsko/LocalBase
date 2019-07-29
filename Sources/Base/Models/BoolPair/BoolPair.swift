

//TODO: consider
// adding merging, union, and other set funcs
// storing (optionally?) BoolCond(s)

public struct BoolPair<T> {
    
    public var trues: [T]
    
    public var falses: [T]
    
    public init(trues: [T] = [],
                falses: [T] = []) {
        self.trues = trues
        self.falses = falses
    }
}
public extension BoolPair {
    
    var hasTrues: Bool {
        return trues.hasSth
    }
    var hasFalses: Bool {
        return falses.hasSth
    }
}
