


public extension Array where Element == HasIDP {
    
    var ids: [ID] {
        return map{$0.id}
    }
    var idSet: Set<ID> {
        return ids.set
    }
    
    
    func allHave(_ id: ID) -> Bool {
        return allSatisfy{$0.id == id}
    }
    func noneHave(_ id: ID) -> Bool {
        return allSatisfy{$0.id != id}
    }
    /// all present
    func hasUnits(with ids: [ID]) -> Bool {
        return allSatisfy{ids.contains($0.id)}
    }
    /// some -> maybe all!
    func hasSomeUnits(with ids: [ID]) -> Bool {
        return has{ids.contains($0.id)}
    }
    
    func unit(with id: ID) -> E? {
        return first(where: {$0.id == id})
    }
    
    /// returns all or nothing
    func units(with ids: [ID],
               allOrNothing: Bool = true) -> [E]? {
        if allOrNothing {
            guard hasUnits(with:ids) else {
                return nil
            }
        }
        return filter{ids.contains($0.id)}
    }
}


public extension Array where Element: HasIDP {
    
    var ids: [ID] {
        return map{$0.id}
    }
    var idSet: Set<ID> {
        return ids.set
    }
    
    
    func allHave(_ id: ID) -> Bool {
        return allSatisfy{$0.id == id}
    }
    func noneHave(_ id: ID) -> Bool {
        return allSatisfy{$0.id != id}
    }
    /// all present
    func hasUnits(with ids: [ID]) -> Bool {
        return allSatisfy{ids.contains($0.id)}
    }
    /// some -> maybe all!
    func hasSomeUnits(with ids: [ID]) -> Bool {
        return has{ids.contains($0.id)}
    }
    
    func unit(with id: ID) -> E? {
        return first(where: {$0.id == id})
    }
    
    /// returns all or nothing
    func units(with ids: [ID],
               allOrNothing: Bool = true) -> [E]? {
        if allOrNothing {
            guard hasUnits(with:ids) else {
                return nil
            }
        }
        return filter{ids.contains($0.id)}
    }
}


public extension Set where Element: HasIDP {
    var ids: [ID] {
        return map{$0.id}
    }
    var idSet: Set<ID> {
        return ids.set
    }
    
    func allHave(_ id: ID) -> Bool {
        return array.allHave(id)
    }
    func noneHave(_ id: ID) -> Bool {
        return array.noneHave(id)
    }
    
    /// all present
    func hasUnits(with ids: [ID]) -> Bool {
        return array.hasUnits(with: ids)
    }
    /// some -> maybe all!
    func hasSomeUnits(with ids: [ID]) -> Bool {
        return array.hasSomeUnits(with: ids)
    }
    
    func unit(with id: ID) -> E? {
        return array.unit(with: id)
    }
    
    /// returns all or nothing
    func units(with ids: [ID],
               allOrNothing: Bool = true) -> [E]? {
        return array.units(with: ids,
                           allOrNothing: allOrNothing)
    }
    
    //TODO: set funcs
}


