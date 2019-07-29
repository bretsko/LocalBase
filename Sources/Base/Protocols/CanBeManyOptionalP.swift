


public protocol CanBeManyOptionalP {
    var optional: Bool {get set}
    var canBeMany: Bool {get set}
}


public extension Array where Element: CanBeManyOptionalP {
    
    var optionals: Array? {
        return filterSth{$0.optional}
    }
    var canBeManys: Array? {
        return filterSth{$0.canBeMany}
    }
    
    var hasOptionals: Bool {
        return optionals != nil
    }
    var hasCanBeManys: Bool {
        return canBeManys != nil
    }
    
    
    /// indices in Array where optional = true
    var optionalIdxs: [Int]? {
        return indices(where: {$0.optional})
    }
    /// indices in Array where canBeMany = true
    var canBeManyIdxs: [Int]? {
        return indices(where: {$0.canBeMany})
    }
}

public extension Set where Element: CanBeManyOptionalP {
    var optionals: Set? {
        return filterSth{$0.optional}
    }
    var canBeManys: Set? {
        return filterSth{$0.canBeMany}
    }
    
    var hasOptionals: Bool {
        return optionals != nil
    }
    var hasCanBeManys: Bool {
        return canBeManys != nil
    }
}




