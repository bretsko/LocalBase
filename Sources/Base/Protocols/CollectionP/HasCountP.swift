

public protocol HasCountP: HasLengthP {
    var count: Int {get}
}
public extension HasCountP {

    var length: Double { //HasLengthP
        return count.d
    }
    
    var len: Int {
        return count
    }
    var has1: Bool {
        return count == 1
    }
    /// count > 1
    var hasMany: Bool {
        return count > 1
    }
    
    var randIdx: Int {
        return Int.rand(count)
    }
}

