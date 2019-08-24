

public extension Float {
    
    /// The biggest positive number
    static var max: Float {
        return greatestFiniteMagnitude
    }
    /// The least positive number
    static var min : Float {
        return leastNormalMagnitude
    }
    /// The biggest negative number
    static var max_neg: Float {
        return greatestFiniteMagnitude * -1
    }
    /// The least negative number (closest to 0)
    static var min_neg: Float {
        return leastNormalMagnitude * -1
    }
}

// GLfloat, cl_float
public extension Float {
    
    var f: Float {
        return Float(self)
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
    
    var i:Int {
        return Int(self)
    }
    
    var ul: UInt {
        return UInt(self)
    }
    
    var ll: Int64 {
        return Int64(self)
    }
    
    
    // MARK: -
    
    var squared:Float {
        return self * self
    }
    
    func scale(by scale:Float) -> Float {
        return self * scale
    }
    
    //TODO:
    ///returns the number as an Int including the number of digits requested. For example, let x = 4.356 ; x.asIntFromDigits(2) returns 435
    //this allows pseudo-fixed point comparisons
    //    public func asIntFromDigits(_ precision: PrecisionDecimals) -> Int {
    //        return Int(floor(self * Float(precision.rawValue)))
    //    }
    
    ///converts to a string of the format nn%, e.g. 0.85 -> 85%
    func asPercentString() -> Str {
        let intVal:Int = Int(self * 100)
        return "\(intVal)%"
    }
    
    
    // Absolute of float value.
    var abs: Float {
        return Swift.abs(self)
    }
    
    
    //MARK: rounding
    
    enum PrecisionDecimals : Int {
        case zero = 1
        case one = 10
        case two = 100
        case three = 1000
        case four = 10000
        case five = 100000
        
        var formatString:Str {
            var decimals:Int = 0
            switch self {
            case .zero:
                decimals = 0
            case .one:
                decimals = 1
            case .two:
                decimals = 2
            case .three:
                decimals = 3
            case .four:
                decimals = 4
            case .five:
                decimals = 5
            }
            return "%.\(decimals)f"
        }
    }
    
    func format(_ precision:PrecisionDecimals = .two) -> Str {
        return Str(format: precision.formatString, self) //was "%.5f" instead of formatstring
    }
}



// MARK: - Operators

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ** : PowerPrecedence


//MARK: Float64

public extension Float64 {
    
    func secondsToHoursMinutesSeconds() -> (Float64, Float64, Float64, Int) {
        let ms = Int((truncatingRemainder(dividingBy: 1)) * 100)
        let seconds = truncatingRemainder(dividingBy: 60)
        let minutes = (self / 60).truncatingRemainder(dividingBy: 60)
        let hours = (self / 3600)
        
        return (hours, minutes, seconds, ms)
    }
    
    func toFormattedTimeString() -> Str {
        let time = secondsToHoursMinutesSeconds()
        if time.0.l > 0 {
            return Str(format: "%02d:%02d:%02d", time.0.l, time.1.l, time.2.l)
        } else if time.1.l > 0 {
            return Str(format: "%02d:%02d", time.1.l, time.2.l)
        } else {
            return Str(format: "%02d.%02d", time.2.l, time.3)
        }
    }
}


//MARK: FloatingPoint

public extension FloatingPoint {
    
    ///  Absolute value of integer number.
    var abs: Self {
        return Swift.abs(self)
    }
    
    ///  Check if integer is positive.
    var isPositive: Bool {
        return self > 0
    }
    
    ///  Check if integer is negative.
    var isNegative: Bool {
        return self < 0
    }
    
    ///  Ceil of number.
    var ceil: Self {
        return Foundation.ceil(self)
    }
    
    ///  Radian value of degree input.
    var degreesToRadians: Self {
        return Self.pi * self / Self(180)
    }
    
    ///  Floor of number.
    var floor: Self {
        return Foundation.floor(self)
    }
    
    ///  Degree value of radian input.
    var radiansToDegrees: Self {
        return self * Self(180) / Self.pi
    }
    
    /// Returns the opposite number.
    var additiveInverse: Self {
        return self * -1
    }
    
    /// Returns the value to the power of `-1`.
    var multiplicativeInverse: Self? {
        let zero: Self = 0
        guard self != zero else { return nil }
        
        return 1 / self
    }
    
    
    ///  Random number between two number.
    /// - Parameters:
    ///   - min: minimum number to start random from.
    ///   - max: maximum number random number end before.
    /// - Returns: random number between two numbers.
    static func random(between min: Self, and max: Self) -> Self {
        let aMin = Self.minimum(min, max)
        let aMax = Self.maximum(min, max)
        let delta = aMax - aMin
        return Self(arc4random()) / Self(UInt64(UINT32_MAX)) * delta + aMin
    }
    
//    static func random(_ lower: Float = 0, _ upper: Float = 100) -> Float {
//        return Float.random(in: lower...upper)
//    }
    
    ///  Random number in a closed interval range.
    /// - Parameter range: closed interval range.
    /// - Returns: random number in the given closed range.
    static func random(inRange range: ClosedRange<Self>) -> Self {
        let delta = range.upperBound - range.lowerBound
        return Self(arc4random()) / Self(UInt64(UINT32_MAX)) * delta + range.lowerBound
    }
    
    
    // MARK: - Initializers
    
    
    ///  Created a random number between two numbers.
    /// - Parameters:
    ///   - min: minimum number to start random from.
    ///   - max: maximum number random number end before.
    init(randomBetween min: Self, and max: Self) {
        let aMin = Self.minimum(min, max)
        let aMax = Self.maximum(min, max)
        let delta = aMax - aMin
        self = Self(arc4random()) / Self(UInt64(UINT32_MAX)) * delta + aMin
    }
    
    ///  Create a random number in a closed interval range.
    /// - Parameter range: closed interval range.
    init(randomInRange range: ClosedRange<Self>) {
        let delta = range.upperBound - range.lowerBound
        self = Self(arc4random()) / Self(UInt64(UINT32_MAX)) * delta + range.lowerBound
    }
}

// MARK: - Operators


prefix operator ±
// Tuple of plus-minus operation.
///
/// - Parameter int: float number
/// - Returns: tuple of plus-minus operation (± 2.5 -> (2.5, -2.5)).
public prefix func ± (Float: Float) -> (Float, Float) {
    // http://nshipster.com/swift-operators/
    return 0 ± Float
}


infix operator ±
// Tuple of plus-minus operation.
///
/// - Parameters:
///   - lhs: float number
///   - rhs: float number
/// - Returns: tuple of plus-minus operation ( 2.5 ± 1.5 -> (4, 1)).
public func ± (lhs: Float, rhs: Float) -> (Float, Float) {
    // http://nshipster.com/swift-operators/
    return (lhs + rhs, lhs - rhs)
}
