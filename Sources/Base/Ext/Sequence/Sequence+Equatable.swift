


public extension Sequence where Element: Equatable {
    
    func contains(_ units: [E]) -> Bool {
        return units.allSatisfy{self.contains($0)}
    }
}

public extension Sequence where Iterator.Element: Equatable {
    
    var uniqueElements: [Iterator.E] {
        return reduce([]) { items, item in
            items.contains(item)
                ? items
                : items + [item]
        }
    }
    ///all objs are equal (Equatable)
    var allAreEqual: Bool {
        return uniqueElements.len == 1
    }
}
