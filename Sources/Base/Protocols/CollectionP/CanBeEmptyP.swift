

public protocol CanBeEmptyP {
    var isEmpty: Bool {get}
}
public extension CanBeEmptyP {

    var sth: Self? {
        return isEmpty ? nil : self
    }
    var hasSth: Bool {
        return !isEmpty
    }
}

