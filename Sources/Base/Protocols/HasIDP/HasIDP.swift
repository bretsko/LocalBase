

public typealias ID = Str
public typealias IDSet = Set<ID>


public protocol HasIDP {
    var idd: ID {get}
}
public extension HasIDP {
    var id: ID {
        return idd
    }
}


public protocol HasMutIDP: HasIDP {
    var idd: ID {get set}
}
//public extension HasMutIDP {
//}



public protocol IdHashableT: Hashable, HasIDP {}
public extension IdHashableT {
    var hashValue: Int {
        return idd.hashValue
    }
}


public protocol StorableP: HasMutIDP, HasDescrP {}

public protocol StorableObjT: StorableP, IdHashableT {}




//TODO:
//public extension Array where Element: IdHashableT {
//}
//public extension Set where Element: IdHashableT {
//}


public extension HasIDP {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.idd == rhs.idd
    }
}

public extension HasIDP where Self: Hashable {
    var hashValue: Int {
        return idd.hashValue
    }
}

extension ID: HasIDP {
    public var idd: ID {
        return self
    }
}


