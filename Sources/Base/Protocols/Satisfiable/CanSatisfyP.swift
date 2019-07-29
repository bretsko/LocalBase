


public protocol CanSatisfyP {
    typealias VoidCond = () -> Bool
    
    func satisfies(_ cond: VoidCond) -> Bool
    
    // OR 
    //func satisfies<T>(_ cond: (T) -> Bool) -> Bool
}


public extension Array where Element: CanSatisfyP {
    
    /// if empty returns true
    func satisfy(_ cond: @escaping VoidCond) -> Bool {
        return allSatisfy{$0.satisfies(cond)}
    }
}

public extension Set where Element: CanSatisfyP {
    
    /// if empty returns true
    func satisfy(_ cond: @escaping VoidCond) -> Bool {
        return allSatisfy{$0.satisfies(cond)}
    }
}


