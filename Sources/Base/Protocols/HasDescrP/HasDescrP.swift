


public protocol HasDescrP: CustomStringConvertible {
    var descr: Str {get}
}
public extension HasDescrP {
    var description: Str {
        return descr
    }
}


//MARK: -


extension Array: HasDescrP {
    public var descr: Str {
        return description
    }
}

public extension Array where Element: HasDescrP {
    var descr: Str {
        var r = ""
        for (i,unit) in enumerated() {
            r += "\n\(i) \(unit)"
        }
        return r
    }
}
public extension Array where Element: CustomStringConvertible {
    var descr: Str {
        var r = ""
        for (i,unit) in enumerated() {
            r += "\n\(i) \(unit)"
        }
        return r
    }
}
public extension Array where Element: RandomAccessCollection, Element.Element: HasDescrP {
    
    var descr: Str {
        var r = ""
        for (i1,row) in enumerated() {
            for (i2,unit) in row.enumerated() {
                r += "\n\(i1) \(i2) \(unit)"
            }
        }
        return r
    }
}

