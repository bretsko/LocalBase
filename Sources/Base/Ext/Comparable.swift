

import Foundation


public extension Comparable {
    
    ///  Returns true if value is in the provided range.
    ///    1.isBetween(5...7) // false
    ///    7.isBetween(6...12) // true
    ///    date.isBetween(date1...date2)
    ///    "c".isBetween(a...d) // true
    ///    0.32.isBetween(0.31...0.33) // true
    /// - parameter min: Minimum comparable value.
    /// - parameter max: Maximum comparable value.
    /// - returns: `true` if value is between `min` and `max`, `false` otherwise.
    func isInRange(_ range: ClosedRange<Self>) -> Bool {
        return range ~= self
    }
    
    ///  Returns value limited within the provided range.
    ///     1.clamped(to: 3...8) // 3
    ///     4.clamped(to: 3...7) // 4
    ///     "c".clamped(to: "e"..."g") // "e"
    ///     0.32.clamped(to: 0.1...0.29) // 0.29
    /// - parameter min: Lower bound to limit the value to.
    /// - parameter max: Upper bound to limit the value to.
    /// - returns: A value limited to the range between `min` and `max`.
    func clamped(to range: ClosedRange<Self>) -> Self {
        return max(range.lowerBound, min(self, range.upperBound))
    }
    
    /**
     Bound the current value between a minimum and maximum value
     
     - parameter min: The minimum possible value
     - parameter max: The maximum possible value
     
     - returns: The current value bounded between a minimum and maximum value
     */
    func limited(min: Self, max: Self) -> Self {
        var a = self
        a.limit(min: min, max: max)
        return a
    }
    
    /// returns the current value bounded between a minimum and maximum value
    func limited(_ min: Self, _ max: Self) -> Self {
        return limited(min: min, max: max)
    }
    
    /**
     Bound self between a minimum and maximum value, in place
     
     - parameter min: The minimum possible value
     - parameter max: The maximum possible value
     */
    mutating func limit(min: Self, max: Self) {
        self = Swift.max(Swift.min(self, max), min)
    }
}

public func < <T: Comparable>(lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (l?, r?):
        return l < r
    case (nil, _?):
        return true
    default:
        return false
    }
}

public func > <T: Comparable>(lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (l?, r?):
        return l > r
    default:
        return rhs < lhs
    }
}
