


public protocol HasIdP {
    
    var identifier: Str {get}
}

public extension HasIdP {
    
    var id: Str {
        identifier
    }
}

