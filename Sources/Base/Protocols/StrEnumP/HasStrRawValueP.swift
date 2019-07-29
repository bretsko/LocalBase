

public protocol HasStrRawValueP: HasStrP {
    var rawValue: Str {get}
}

public extension HasStrRawValueP {
    
    var s: Str {
        return rawValue
    }
    //HasStrP
    var str: Str {
        return rawValue
    }
    
    
    // extension HasStrRawValueP where Self: Hashable {
    var hashValue: Int {
        return rawValue.hashValue
    }
    
    // extension HasStrRawValueP where Self: Comparable {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

//MARK: RawValueInitableP

public protocol RawValueInitableP {
    init?(rawValue: Str)
}
//public extension RawValueInitableP {
//}
