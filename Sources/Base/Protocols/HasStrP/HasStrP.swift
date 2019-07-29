


public protocol HasStrP {
    var str: Str {get}
}
public extension HasStrP {
    
    var s: Str {
        return str
    }
}



public protocol HasMutStrP: HasStrP {
    var str: Str {get set}
}
public extension HasMutStrP {
    
    var s: Str {
        get {
            return str
        }
        set {
            str = newValue
        }
    }
}


public protocol HasStringsP {
    var strs: [Str] {get}
}
//public extension HasStringsP {
//}


public protocol HasStaticStringsP {
    static var strs: [Str] {get}
}
//public extension HasStringsP {
//}





public protocol StringHashableT: HasStrP, Hashable {}

public extension StringHashableT {
    var hashValue: Int {
        return str.hashValue
    }
}

public protocol StringComparableT: HasStrP, Comparable {}

public extension StringComparableT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.str < rhs.str
    }
}








