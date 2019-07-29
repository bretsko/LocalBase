


public protocol HasMutConfidenceP: HasConfidenceP {
    /// 0.0 - 1.0
    var confidence: Double {get set}
}

public extension HasMutConfidenceP {
    
    mutating func setHighestConfidence() {
        confidence = 1.0
    }
    mutating func setLowestConfidence() {
        confidence = 0.0
    }
    
    /// returns false if already the highest
    @discardableResult
    mutating func setMaxConfidence() -> Bool {
        guard !hasMaxConfidence else {
            return false
        }
        confidence = 1.0
        return true
    }
    
    /// returns false if already the lowest
    @discardableResult
    mutating func setMinConfidence() -> Bool {
        guard !hasMinConfidence else {
            return false
        }
        confidence = 0.0
        return true
    }
    
    /// if other has max, changes other's confidence by subtracting from it the provided step
    /// if other's confidence was changed - returns it with new value
    /// if other already has higher confidence - add step anyway!
    /// if this obj's confidence is alrady max - no effect!
    /// Be careful using this with many unit, conflicts possible!
    @discardableResult
    mutating func prioritizeMore(than other: HasMutConfidenceP,
                                 with step: Double = 0.1) -> HasMutConfidenceP? {
        crashIfFalse(isValidConfidence(step))
        
        if other.hasMaxConfidence {
            var a = other
            a.decreaseConfidence(step)
            increaseConfidence(step)
            return a
            
        } else {
            increaseConfidence(step)
            return nil
        }
    }
    
    /// if other has min, changes other's confidence by adding to it the provided step
    /// if other's confidence was changed - returns it with new value
    /// if other already has higher confidence - add step anyway!
    /// if this obj's confidence is alrady minimal - no effect!
    /// Be careful using this with many unit, conflicts possible!
    @discardableResult
    mutating func prioritizeLess(than other: HasMutConfidenceP,
                                 with step: Double = 0.1) -> HasMutConfidenceP? {
        crashIfFalse(isValidConfidence(step))
        
        if other.hasMinConfidence {
            var a = other
            a.increaseConfidence(step)
            decreaseConfidence(step)
            return a
            
        } else {
            decreaseConfidence(step)
            return nil
        }
    }
    
    /// returns false if cannot inrease anymore
    @discardableResult
    mutating func increaseConfidence(_ step: Double = 0.1) -> Bool {
        crashIfFalse(isValidConfidence(step))
        
        if step + confidence > 1 { // cannot be > 1
            confidence = 1
            return false
        }
        confidence += step
        return true
    }
    
    /// returns false if cannot decrease anymore
    @discardableResult
    mutating func decreaseConfidence(_ step: Double = 0.1) -> Bool {
        crashIfFalse(isValidConfidence(step))
        
        if step > confidence { // cannot be < 0
            confidence = 0
            return false
        }
        confidence -= step
        return true
    }
}
