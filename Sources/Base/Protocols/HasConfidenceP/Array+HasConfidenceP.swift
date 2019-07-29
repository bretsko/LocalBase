

public extension Array where Element: HasConfidenceP {
   
    var sortedByConfidence: [E] {
        return sorted(by: {$0.confidence < $1.confidence})
    }
    var unitWithMinConfidence: E? {
        return sortedByConfidence.first
    }
    var unitWithMaxConfidence: E? {
        return sortedByConfidence.last
    }
    
    /// sorted
    var confidences: [Double] {
        return map{$0.confidence}.sorted()
    }
    var minConfidence: Double? {
        return confidences.first
    }
    var maxConfidence: Double? {
        return confidences.last
    }
}


public extension Set where Element: HasConfidenceP {
    
    var sortedByConfidence: [E] {
        return sorted(by: {$0.confidence < $1.confidence})
    }
    var unitWithMinConfidence: E? {
        return sortedByConfidence.first
    }
    var unitWithMaxConfidence: E? {
        return sortedByConfidence.last
    }
    
    /// sorted
    var confidences: [Double] {
        return map{$0.confidence}.sorted()
    }
    var minConfidence: Double? {
        return confidences.first
    }
    var maxConfidence: Double? {
        return confidences.last
    }
}


