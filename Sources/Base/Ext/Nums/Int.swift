


public extension Int {
    
    static func rand(_ upper_bound: Int = Int.max) -> Int {
        #if os(Linux)
        return Int(random() % (upper_bound + 1))
        #else
        return Int(arc4random_uniform(UInt32(upper_bound)))
        #endif
    }

    static func random(_ lower: Int = 0,
                       _ upper: Int = 100) -> Int {
        return Int.random(in: lower...upper)
    }
}

public extension Int {
    func times(_ f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
}

public extension UInt {
    func times(_ f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
}


//MARK: Int

// long
public extension Int {
    
    var f:Float {
        return Float(self)
    }
    
    var d:Double {
        return Double(self)
    }
    
    var i:Int {
        return self
    }
    
    var squared:Int {
        return self * self
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
    
    //    var l: Int {
    //        return Int(self)
    //    }
    
    var ul: UInt {
        return UInt(self)
    }
    
    var ll: Int64 {
        return Int64(self)
    }
    
    var ull: UInt64 {
        return UInt64(self)
    }
}

//MARK: UInt

// unsigned long, size_t
public extension UInt {
    
    var d: Double {
        return Double(self)
    }
    
    var f: Float {
        return Float(self)
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
    
    var i: Int32 {
        return Int32(self)
    }
    
    var ui: UInt32 {
        return UInt32(self)
    }
    
    var l: Int {
        return Int(self)
    }
    
    //    var ul: UInt {
    //        return UInt(self)
    //    }
    
    var ll: Int64 {
        return Int64(self)
    }
    
    var ull: UInt64 {
        return UInt64(self)
    }
}

//MARK: Int32

public extension Int32 {
    /// - note: Using `Int` as parameter type as we usually just want to write `Int32.random(13, 37)` and not `Int32.random(Int32(13), Int32(37))`
    static func random(_ lower: Int = 0,
                       _ upper: Int = 100) -> Int32 {
        return Int32.random(in: Int32(lower)...Int32(upper))
    }
}

// GLint, cl_int
public extension Int32 {
    
    var d: Double {
        return Double(self)
    }
    
    var f: Float {
        return Float(self)
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
    
    var ull: UInt64 {
        return UInt64(self)
    }
}

//MARK: Int64

public extension Int64 {
    
    var d: Double {
        return Double(self)
    }
    
    var f: Float {
        return Float(self)
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
    
    // var i: Int32 {
    // return Int32(self)
    // }
    
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
    
    var ull: UInt64 {
        return UInt64(self)
    }
}

//MARK: UInt32

// GLuint, GLenum, GLsizei
public extension UInt32 {
    var d: Double {
        return Double(self)
    }
    
    var f: Float {
        return Float(self)
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
    
    var i: Int32 {
        return Int32(self)
    }
    
    //    var ui: UInt32 {
    //        return UInt32(self)
    //    }
    
    var l: Int {
        return Int(self)
    }
    
    var ul: UInt {
        return UInt(self)
    }
    
    var ll: Int64 {
        return Int64(self)
    }
    
    var ull: UInt64 {
        return UInt64(self)
    }
}

//MARK: UInt64

// Darwin clock_types.h
public extension UInt64 {
    
    var d: Double {
        return Double(self)
    }
    
    var f: Float {
        return Float(self)
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
    
    var i: Int32 {
        return Int32(self)
    }
    
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
    
    //    var ull: UInt64 {
    //        return UInt64(self)
    //    }
}

// GLboolean, Boolean
public extension UInt8 {
    var boolValue: Bool {
        return self != 0
    }
    
    init(booleanLiteral value: BooleanLiteralType) {
        self = value ? UInt8(1) : UInt8(0)
    }
}



// GLint
extension Int32: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        self = value ? Int32(1) : Int32(0)
    }
}

extension Int: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        self = value ? Int(1) : Int(0)
    }
    
//    public init<T : FixedWidthInteger>(_ integer: T) {
//        if integer == 0 {
//            self.init(false)
//        } else {
//            self.init(true)
//        }
//    }
}


// Int8
public extension CChar {
    init(_ v: UnicodeScalar) {
        self = CChar(v.value)
    }
}


//public extension SignedInteger {
//    public static func rand() -> Self {
//        var r: Self = 0
//        arc4random_buf(&r, MemoryLayout<Self>.size)
//        return r
//    }
//}
