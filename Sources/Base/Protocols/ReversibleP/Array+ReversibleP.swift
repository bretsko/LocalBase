


public extension Array where Element: ReversibleP {
    
    /// returns reversed for each of [ReversibleP]
    func reversed() -> Self {
        return map{$0.reversed()}
    }
}
public extension Array where Element: ReversibleP & Equatable {
    func isReversed(of units: [E]) -> Bool {
        return reversed() == units
    }
}

public extension Set where Element: ReversibleP {
    
    /// returns reversed for each of [ReversibleP]
    func reversed() -> Self {
        return map{$0.reversed()}.set
    }
    
    func isReversed(of units: Set) -> Bool {
        return reversed() == units
    }
}

