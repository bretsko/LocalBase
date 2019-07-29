


extension Set: HasDescrP {
    public var descr: Str {
        return array.descr
    }
}
extension Dictionary: HasDescrP {
    public var descr: Str {
        L.notImpl()
        //return array.descr
    }
}

extension Str: HasDescrP {
    public var descr: Str {
        return self
    }
}
extension Int: HasDescrP {
    public var descr: Str {
        return Str(self)
    }
}
extension Double: HasDescrP {
    public var descr: Str {
        return Str(self)
    }
}
extension Char: HasDescrP {
    public var descr: Str {
        return Str(self)
    }
}

extension Bool: HasDescrP {
    public var descr: Str {
        return Str(self)
    }
}
