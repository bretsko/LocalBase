


public protocol ReversibleP {
    
    //DONT MAKE VAR -> CANNOT USE AS PROTOCOL
    // if Self is returned from function - can use in P protocols !! but if it's var  - NOT !
    /// Returns an edge with the origin and dest reversed
    func reversed() -> Self
}

public extension ReversibleP where Self: Equatable {
    func isReversed(of obj: Self) -> Bool {
        return reversed() == obj
    }
}


public protocol Reversible_P {
    func reversed() -> Self?
}
public extension Reversible_P {
    var hasReversed: Bool {
        return reversed() != nil
    }
}
