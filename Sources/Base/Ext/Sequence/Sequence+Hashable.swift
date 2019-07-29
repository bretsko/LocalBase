

public extension Sequence where Element: Hashable {
    
    var containsDuplicates: Bool {
        var set = Set<E>()
        return allSatisfy{set.insert($0).inserted}
    }
}

//MARK: uniqueElements

public extension Sequence where Iterator.Element: Hashable {
    var uniqueElements: [Iterator.E] {
        return Array(Set(self) )
    }
}
