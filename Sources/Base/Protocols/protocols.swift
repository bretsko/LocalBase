
@_exported import Foundation
@_exported import Log

public typealias Str = String
public typealias Char = Character
public typealias CharSet = CharacterSet


public protocol CommonT: Equatable, HasDescrP {} //EUnitT

public protocol HasSELF {
    associatedtype SELF
}

public protocol CanInitP {
    init()
}


public protocol SummableT {
    static func +(lhs: Self, rhs: Self) -> Self
}


public protocol CustomEquatable {
    static func === (lhs: Self, rhs: Self) -> Bool
}

//public typealias Codeq = Codable & Equatable
