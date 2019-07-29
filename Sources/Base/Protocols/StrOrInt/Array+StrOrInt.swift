


public extension Array where Element == StrOrInt {
    var strs: [Str]? {
        return map{$0._str}.compactMap{$0}.sth
    }
    var ints: [Int]? {
        return map{$0._int}.compactMap{$0}.sth
    }
}

public extension Set where Element == StrOrInt {
    var strs: Set<Str>? {
        return array.strs?.set
    }
    var ints: Set<Int>? {
        return array.ints?.set
    }
}
