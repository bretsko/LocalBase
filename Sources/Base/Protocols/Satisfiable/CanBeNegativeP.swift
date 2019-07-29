


//TODO: consider renaming to mustBeNegative
public protocol CanBeNegativeP {
    /// negative cond, A must be NOT B
    var negative: Bool {get set}
}
public extension CanBeNegativeP {
    
    mutating func setNegative() {
        negative = true
    }
    mutating func setPositive() {
        negative = false
    }
}
