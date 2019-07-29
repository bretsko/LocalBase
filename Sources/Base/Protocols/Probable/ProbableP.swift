


public protocol ProbableP {
    associatedtype PElement: Equatable
    
    func count(_ units: [PElement]) -> Int
	
    func probability(of units: [PElement]) -> Double
	
    /// The expected value of given units based on a number of numTrials
    func expectedValue(numTrials: Int,
                       for units: [PElement]) -> Double
}

public extension ProbableP {
    
    func count(_ units: PElement...) -> Int {
        return count(units)
    }
    func probability(of units: PElement...) -> Double {
        return probability(of: units)
    }
    func expectedValue(numTrials: Int,
                       for units: PElement...) -> Double {
        return expectedValue(numTrials: numTrials, for: units)
    }
}
