

public protocol HasEDefaultStateT: HasDefaultStateP, Equatable {}

public protocol HasHDefaultStateT: HasEDefaultStateT, Hashable {}



extension Int: HasHDefaultStateT {}
public extension Int {
    typealias SELF = Int
    static var defaultState: Int {
        return 0
    }
}

extension Double: HasHDefaultStateT {}
public extension Double {
    typealias SELF = Double
    static var defaultState: Double {
        return 0.0
    }
}

extension Str: HasHDefaultStateT {}
public extension Str {
    typealias SELF = Str
    static var defaultState: Str {
        return ""
    }
}


//MARK:

//extension Array: HasHDefaultStateT {}
//public extension Array {
//
//}
//
//extension Set: HasHDefaultStateT {}
//public extension Set {
//
//}
