


public extension Array where Element: HasLengthP {
    
    var sortedByLength: Array {
        return sorted(by: {$0.length < $1.length})
    }
    var lengths: [Double] {
        return map{$0.length}
    }

    var avgLength: Double? {
        return lengths.average
    }
    var totalLength: Double? {
        return lengths.sth?.sum
    }
    var minLength: Double? {
        return lengths.sorted().first
    }
    var maxLength: Double? {
        return lengths.sorted().last
    }

    /// if not empty
    func probabilityOf(length: Double) -> Double? {
        return lengths.probability(of: length)
    }
    /// if not empty
    func probabilityOf(lengths: [Double]) -> Double? {
        return self.lengths.probability(of: lengths)
    }

    var withMinLength: Array? {
        if let a = minLength {
            return filterSth{$0.length == a}
        }
        return nil
    }
    var withMaxLength: Array?  {
        if let a = maxLength {
            return filterSth{$0.length == a}
        }
        return nil
    }
    var withAvgLength: Array? {
        if let a = avgLength {
            return filterSth{$0.length == a}
        }
        return nil
    }
}


public extension Set where Element: HasLengthP { //? HIntervalT

    var sortedByLength: [E] {
        return array.sortedByLength
    }
    var lengths: [Double] {
        return array.lengths
    }
    
    var avgLength: Double? {
        return array.avgLength
    }
    var totalLength: Double? {
        return array.totalLength
    }
    var minLength: Double? {
        return array.minLength
    }
    var maxLength: Double? {
        return array.maxLength
    }
    
    /// if not empty
    func probabilityOf(length: Double) -> Double? {
        return array.probabilityOf(length:length)
    }
    /// if not empty
    func probabilityOf(lengths: [Double]) -> Double? {
        return array.probabilityOf(lengths:lengths)
    }
    
    var withMinLength: Set? {
        return array.withMinLength?.set
    }
    var withMaxLength: Set?  {
        return array.withMaxLength?.set
    }
    var withAvgLength: Set? {
        return array.withAvgLength?.set
    }
}
