

public protocol ProbableT: HasEquatableElementT {
    
    func count(of units: [E]) -> Int
    
    func probability(of units: [E]) -> Double
    
    func expectedValue(numTrials: Int,
                       for units: [E]) -> Double
}
public extension ProbableT {
    
    func count(of units: E...) -> Int {
        return count(of: units)
    }
    func probability(of units: E...) -> Double {
        return probability(of: units)
    }
    func expectedValue(numTrials: Int,
                       for units: E...) -> Double {
        return expectedValue(numTrials: numTrials, for: units)
    }
}

