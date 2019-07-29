


public extension Array where Element: HasWeightP {
    
    var sortedByWeight: Array {
        return sorted(by: {$0.weight < $1.weight})
    }
    var weights: [Double] {
        return map{$0.weight}
    }
    
    var totalWeight: Double? {
        return weights.sth?.sum
    }
    var avgWeight: Double? {
        return weights.average
    }
    var minWeight: Double? {
        return weights.sorted().first
    }
    var maxWeight: Double? {
        return weights.sorted().last
    }
    
    /// if not empty
    func probabilityOf(weight: Double) -> Double? {
        return weights.probability(of: weight)
    }
    /// if not empty
    func probabilityOf(weights: [Double]) -> Double? {
        return self.weights.probability(of: weights)
    }
    
    var withMinWeight: Array? {
        if let a = minWeight {
            return filterSth{$0.weight == a}
        }
        return nil
    }
    var withMaxWeight: Array?  {
        if let a = maxWeight {
            return filterSth{$0.weight == a}
        }
        return nil
    }
    var withAvgWeight: Array? {
        if let a = avgWeight {
            return filterSth{$0.weight == a}
        }
        return nil
    }
}


public extension Set where Element: HasWeightP {
    
    var weights: [Double] {
        return array.weights
    }
    var sortedByWeight: [E] {
        return array.sortedByWeight
    }
    
    var totalWeight: Double? {
        return array.totalWeight
    }
    var avgWeight: Double? {
        return array.avgWeight
    }
    var minWeight: Double? {
        return array.minWeight
    }
    var maxWeight: Double? {
        return array.maxWeight
    }
    
    
    var withMinWeight: Set? {
        return array.withMinWeight?.set
    }
    var withMaxWeight: Set?  {
        return array.withMaxWeight?.set
    }
    var withAvgWeight: Set? {
        return array.withAvgWeight?.set
    }
    
    /// if not empty
    func probabilityOf(weight: Double) -> Double? {
        return array.probabilityOf(weight:weight)
    }
    /// if not empty
    func probabilityOf(weights: [Double]) -> Double? {
        return array.probabilityOf(weights:weights)
    }
}
