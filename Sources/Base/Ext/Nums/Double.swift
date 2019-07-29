
import Foundation


public extension Double {
    
    /// The biggest positive number
    static var max: Double {
        return greatestFiniteMagnitude
    }
    /// The least positive number
    static var min : Double {
        return leastNormalMagnitude
    }
    /// The biggest negative number
    static var max_neg: Double {
        return greatestFiniteMagnitude * -1
    }
    /// The least negative number (closest to 0)
    static var min_neg: Double {
        return leastNormalMagnitude * -1
    }
}

//#if os(Linux)
//    public let DBL_MAX: Double = 1.7976931348623157e+308
//#endif


public extension Double {
    /// Computes the combis of the receiver and the parameter
    ///
    /// - parameter k: The number to choose from the receiver
    /// - returns: The number of combis of the receiver and `k`
    func choose(_ k: Double) -> Double {
        precondition(k <= self, "cannot choose more than the receiver")
        return tgamma(self + 1) / (tgamma(k + 1) * tgamma(self - k + 1))
    }
}

public extension Double {
    
    var f:Float {
        return Float(self)
    }
    
    var i:Int {
        return Int(self)
    }
    
    var squared:Double {
        return self * self
    }
    
    var d: Double {
        return Double(self)
    }
    
    var b: Int8 {
        return Int8(self)
    }
    
    var ub: UInt8 {
        return UInt8(self)
    }
    
    var s: Int16 {
        return Int16(self)
    }
    
    var us: UInt16 {
        return UInt16(self)
    }
    
    //    var i: Int32 {
    //        return Int32(self)
    //    }
    
    var ui: UInt32 {
        return UInt32(self)
    }
    
    var l: Int {
        return Int(self)
    }
    
    var ul: UInt {
        return UInt(self)
    }
    
    var ll: Int64 {
        return Int64(self)
    }
    
    // MARK: -
    
    func truncate(places: Int) -> Double {
        return (Darwin.floor(pow(10.0, places.d) * self) / pow(10.0, places.d)).d
    }
    
    // Absolute of double value.
    var abs: Double {
        return Swift.abs(self)
    }
    
    // Str with number and current locale currency.
    var asLocaleCurrency: Str {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter.string(from: self as NSNumber)!
    }
    
    // Ceil of double value.
    var ceil: Double {
        return Foundation.ceil(self)
    }
    
    // Radian value of degree input.
    var degreesToRadians: Double {
        return Double.pi * self / 180.0
    }
    
    // Floor of double value.
    var floor: Double {
        return Foundation.floor(self)
    }
    
    // Degree value of radian input.
    var radiansToDegrees: Double {
        return self * 180 / Double.pi
    }
    
    /// Generate a random Double bounded by a closed interval range.
    static func random(_ range: ClosedRange<Double>) -> Double {
        return arc4random().d / UInt64(UINT32_MAX).d * (range.upperBound - range.lowerBound) + range.lowerBound
    }
    
    /// Generate a random Double bounded by a range from min to max.
    static func random(min: Double, max: Double) -> Double {
        return random(min ... max)
    }
    
//    static func random(_ lower: Double = 0, _ upper: Double) -> Double {
//        return Double.random(in: lower...upper)
//    }
    
    func roundToPlaces(places: Int) -> Double {
        let divisor = pow(10.0, places.d)
        return Darwin.round(self * divisor) / divisor
    }
    
    ///returns the number as an Int including the number of digits requested. For example, let x = 4.356 ; x.asIntFromDigits(2) returns 435
    //this allows pseudo-fixed point comparisons
    //    public func asIntFromDigits(_ precision: PrecisionDecimals) -> Int {
    //        return Int(floor(self * precision.rawValue.d))
    //    }
    
    func asPercentString() -> Str {
        return f.asPercentString()
    }
}


//extension Decimal: Random, RandomInClosedRange {
//    
//    /// Generates a random value of `Self`.
//    public static func random<R: RandomGenerator>(using randomGenerator: inout R) -> Decimal {
//        return random(in: 0...1, using: &randomGenerator)
//    }
//    
//    /// Returns a random value of `Self` inside of the closed range.
//    public static func random<R: RandomGenerator>(in closedRange: ClosedRange<Decimal>, using randomGenerator: inout R) -> Decimal {
//        let multiplier = closedRange.upperBound - closedRange.lowerBound
//        return closedRange.lowerBound + multiplier * (Decimal(UInt32.random(using: &randomGenerator)) / Decimal(UInt32.max))
//    }
//    
//}

// MARK: - Operators

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator **: PowerPrecedence
///  Value of exponentiation.
///
/// - Parameters:
///   - lhs: base double.
///   - rhs: exponent double.
/// - Returns: exponentiation r (example: 4.4 ** 0.5 = 2.0976176963).
public func ** (lhs: Double, rhs: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return pow(lhs, rhs)
}

// swiftlint:disable next identifier_name
prefix operator √
///  Square root of double.
///
/// - Parameter double: double value to find square root for.
/// - Returns: square root of given double.
public prefix func √ (double: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return sqrt(double)
}
infix operator ±
// Tuple of plus-minus operation.
///
/// - Parameters:
///   - lhs: double number
///   - rhs: double number
/// - Returns: tuple of plus-minus operation (example: 2.5 ± 1.5 -> (4, 1)).
func ± (lhs: Double, rhs: Double) -> (Double, Double) {
    // http://nshipster.com/swift-operators/
    return (lhs + rhs, lhs - rhs)
}

prefix operator ±
// Tuple of plus-minus operation.
///
/// - Parameter int: double number
/// - Returns: tuple of plus-minus operation (example: ± 2.5 -> (2.5, -2.5)).
public prefix func ± (double: Double) -> (Double, Double) {
    // http://nshipster.com/swift-operators/
    return 0 ± double
}
