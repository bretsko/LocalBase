

public protocol HasMutWeightP: HasWeightP {
    /// 0.0 - 1.0
    var weight: Double {get set}
}

public extension HasMutWeightP {
    
    /// returns false if already the lowest
    @discardableResult
    mutating func setMinWeight() -> Bool {
        guard !hasMinWeight else {
            return false
        }
        weight = 0.0
        return true
    }

    
    //TODO:
//    /// if other has max, changes other's weight by subtracting from it the provided step
//    /// if other's weight was changed - returns it with new value
//    /// if other already has higher weight - add step anyway!
//    /// if this obj's weight is alrady max - no effect!
//    /// Be careful using this with many unit, conflicts possible!
//    @discardableResult
//    mutating func setWeightMore(than other: HasMutWeightP,
//                                 with step: Double = 0.1) -> HasMutWeightP? {
//        crashIfFalse(isValidWeight(step))
//
//        if other.hasMaxWeight {
//            var a = other
//            a.decreaseWeight(step)
//            increaseWeight(step)
//            return a
//
//        } else {
//            increaseWeight(step)
//            return nil
//        }
//    }
//
//    /// if other has min, changes other's weight by adding to it the provided step
//    /// if other's weight was changed - returns it with new value
//    /// if other already has higher weight - add step anyway!
//    /// if this obj's weight is alrady minimal - no effect!
//    /// Be careful using this with many unit, conflicts possible!
//    @discardableResult
//    mutating func prioritizeLess(than other: HasMutWeightP,
//                                 with step: Double = 0.1) -> HasMutWeightP? {
//        crashIfFalse(isValidWeight(step))
//
//        if other.hasMinWeight {
//            var a = other
//            a.increaseWeight(step)
//            decreaseWeight(step)
//            return a
//
//        } else {
//            decreaseWeight(step)
//            return nil
//        }
//    }
//
//    /// returns false if cannot inrease anymore
//    @discardableResult
//    mutating func increaseWeight(_ step: Double = 0.1) -> Bool {
//        crashIfFalse(isValidWeight(step))
//
//        if step + weight > 1 { // cannot be > 1
//            weight = 1
//            return false
//        }
//        weight += step
//        return true
//    }
//
//    /// returns false if cannot decrease anymore
//    @discardableResult
//    mutating func decreaseWeight(_ step: Double = 0.1) -> Bool {
//        crashIfFalse(isValidWeight(step))
//
//        if step > weight { // cannot be < 0
//            weight = 0
//            return false
//        }
//        weight -= step
//        return true
//    }
    
    
//    /// returns false if already the highest
//    @discardableResult
//    mutating func setMaxWeight() -> Bool {
//        guard !hasMaxWeight else {
//            return false
//        }
//        weight = 1.0
//        return true
//    }
}
