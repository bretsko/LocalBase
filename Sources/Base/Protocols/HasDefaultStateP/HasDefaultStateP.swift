


public protocol HasDefaultStateP: HasSELF {
    static var defaultState: Self {get}
}
public extension HasDefaultStateP {
    var defaultState: Self {
        return Self.defaultState
    }
}


//MARK:

extension Array: HasDefaultStateP {}
public extension Array {
    typealias SELF = Array
    static var defaultState: Array {
        return []
    }
}

extension Set: HasDefaultStateP {}
public extension Set {
    typealias SELF = Set
    static var defaultState: Set {
        return Set()
    }
}


//MARK: -

public extension Array where Element: HasDefaultStateP & Equatable {
    var hasDefaultState: Bool {
        return contains(where: {$0 == E.defaultState})
    }
    var countDefaultStates: Int {
        return count{$0 == E.defaultState}
    }
    var removingDefaultStates: Array? {
        L.notImpl()
        //return removing(while: {$0 == E.defaultState})?.sth
    }
}

// bridge
public extension Set where Element: HasDefaultStateP & Hashable {
    var hasDefaultState: Bool {
        return array.hasDefaultState
    }
    var countDefaultStates: Int {
        return array.countDefaultStates
    }
    var removingDefaultStates: Set? {
        return array.removingDefaultStates?.set
    }
}
