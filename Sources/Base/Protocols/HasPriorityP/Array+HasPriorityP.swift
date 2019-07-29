

public extension Array where Element: HasPriorityP {
    
    var priorities: [Double] {
        return map{$0.priority}
    }
    var sortedByPriority: Array {
        return sorted(by: {$0.priority < $1.priority})
    }
    
    var totalPriority: Double? {
        return priorities.sth?.sum
    }
    var avgPriority: Double? {
        return priorities.average
    }
    var minPriority: Double? {
        return priorities.first
    }
    var maxPriority: Double? {
        return priorities.last
    }
    

    /// if not empty
    func probabilityOf(priority: Double) -> Double? {
        return priorities.probability(of: priority)
    }
    /// if not empty
    func probabilityOf(priorities: [Double]) -> Double? {
        return self.priorities.probability(of: priorities)
    }
    
    var withMinPriority: Array? {
        if let a = minPriority {
            return filterSth{$0.priority == a}
        }
        return nil
    }
    var withMaxPriority: Array?  {
        if let a = maxPriority {
            return filterSth{$0.priority == a}
        }
        return nil
    }
    var withAvgPriority: Array? {
        if let a = avgPriority {
            return filterSth{$0.priority == a}
        }
        return nil
    }
}



public extension Set where Element: HasPriorityP {
    
    var priorities: [Double] {
        return array.priorities
    }
    var sortedByPriority: [E] {
        return array.sortedByPriority
    }

    var totalPriority: Double? {
        return array.totalPriority
    }
    var avgPriority: Double? {
        return array.avgPriority
    }
    var minPriority: Double? {
        return array.minPriority
    }
    var maxPriority: Double? {
        return array.maxPriority
    }
    
    
    var withMinPriority: Set? {
        return array.withMinPriority?.set
    }
    var withMaxPriority: Set?  {
        return array.withMaxPriority?.set
    }
    var withAvgPriority: Set? {
        return array.withAvgPriority?.set
    }
    
    /// if not empty
    func probabilityOf(priority: Double) -> Double? {
        return array.probabilityOf(priority:priority)
    }
    /// if not empty
    func probabilityOf(priorities: [Double]) -> Double? {
        return array.probabilityOf(priorities:priorities)
    }
}
