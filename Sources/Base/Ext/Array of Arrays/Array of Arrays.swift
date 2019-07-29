

public extension Array where Element: RandomAccessCollection {

    var sortedByLength: [E]? {
        return sorted(by: {$0.count < $1.count}).sth
    }
    var lengths: [Int]? {
        return map{$0.count}.sth
    }
    /// if not empty
    var avgLength: Double {
        return lengths?.average.d ?? 0
    }
    
    /// if not empty
    var shortest: E? {
        return sortedByLength?.first
    }
    /// if not empty
    var longest: E? {
        return sortedByLength?.last
    }

    
    /// if not empty
    var minLength: Int? {
        return shortest?.count
    }
    /// if not empty
    var maxLength: Int? {
        return longest?.count
    }
      
    /// if not empty
    func probabilityOf(arrayLength: Int) -> Double? {
        return lengths?.probability(of: arrayLength)
    }
    /// if not empty
    func probabilityOf(arrayLengths: [Int]) -> Double? {
        return self.lengths?.probability(of: arrayLengths)
    }
    
}
