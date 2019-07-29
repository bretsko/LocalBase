


public protocol HasAllEStatesT: HasAllStatesP, Equatable {}
//public extension HasAllEStatesT {}


public protocol HasAllHStatesT: HasAllEStatesT, Hashable {}
//public extension HasAllHStatesT {}
