
public typealias NumFormatterStyle = NumberFormatter.Style


public protocol HasNumFormatterStyleP {
    
    var numStyle: NumFormatterStyle {get}
}

public protocol NumFormatterStyleConvertibleT: HasNumFormatterStyleP, HasAllFormsT {}

public extension NumFormatterStyleConvertibleT {
    
    init?(_ numStyle: NumFormatterStyle) {
        if let a = Self.allForms.first(where: {
            $0.numStyle == numStyle
        }) {
            self = a
        } else {
            return nil
        }
    }
}
