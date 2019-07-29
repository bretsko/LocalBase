
// Swift protocol
public protocol HasElementTypeT {
    associatedtype Element //: HasDescrP
    typealias E = Element
}
public extension HasElementTypeT {
    typealias BoolCond = (E) -> Bool
    typealias VoidCond = () -> Bool
    typealias VoidBlock = (E) -> Void
}


public protocol HasEquatableElementT: HasElementTypeT {
    associatedtype Element: Equatable
}
public protocol HasHashableElementT: HasEquatableElementT {
    associatedtype Element: Hashable
}


public protocol HasComparableElementT: HasElementTypeT {
    associatedtype Element: Comparable
}

public protocol HasHashableComparableElementT: HasHashableElementT {
    associatedtype Element: Comparable
}

//
extension Set: HasHashableElementT {} //SwiftHashableListT

