

public typealias EUnitT = HasDescrP & Equatable
public typealias HUnitT = HasDescrP & Hashable


public protocol HasUnitTypeT {
    associatedtype Unit: HasDescrP
    typealias U = Unit 
}


public protocol HasEUnitTypeT: HasUnitTypeT {
    associatedtype Unit: Equatable
}

public protocol HasHUnitTypeT: HasEUnitTypeT {
    associatedtype Unit: Hashable
}


public protocol HasComparableUnitT: HasUnitTypeT {
    associatedtype Unit: Comparable
}

public protocol HasHashableComparableUnitT: HasHUnitTypeT, HasComparableUnitT {}

// ??
//public protocol HasDUnitT: HasUnitTypeT {
//    associatedtype Unit : HasDescrP
//}
