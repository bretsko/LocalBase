


public enum StrOrInt: Hashable, HasDescrP {
    case str(Str)
    case int(Int)
}

public extension StrOrInt {
    
    init(_ s: Str) {
        self = .str(s)
    }
    var _str: Str? {
        switch self {
        case .str(let s):
            return s
        default:
            return nil
        }
    }
    
    init(_ i: Int) {
        self = .int(i)
    }
    var _int: Int? {
        switch self {
        case .int(let i):
            return i
        default:
            return nil
        }
    }
    
    //MARK:
    
    var descr: Str {
        var r = "StrOrInt"
        switch self {
        case .str(let s):
            r += "str \(s)"
        case .int(let i):
            r += "int \(i)"
        }
        return r
    }
}
