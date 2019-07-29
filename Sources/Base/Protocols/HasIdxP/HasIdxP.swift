


public protocol HasIdxP {
    var idx: Int {get}
}

public extension HasIdxP {
    
    /// idx == 0
    var isFirst: Bool {
        return idx == 0
    }
    
    /// adds one
    func nextIdx() -> Int {
        return idx + 1
    }
    
    /// subtracts one, if 0 always returns 0
    func prevIdx() -> Int {
        return idx == 0 ? 0 : idx - 1
    }
    
}
public typealias HasIdxT = HasIdxP & IdxHashableT & IdxCmpT












