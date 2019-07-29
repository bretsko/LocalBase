

//#if os(Linux)
//// typealias Location = Str
public struct Location: Hashable {
    let latitude: Double
    let longitude: Double
}
//#else
//import CoreLocation
// typealias Location = CLLocationCoordinate2D
//#endif

  
public protocol HasLocationP {
    var location: Location {get}
}
//public extension HasLocationP {
//}


public protocol HasLocation_P {
    var location: Location? {get}
}
//public extension HasLocation_P {
//}


public protocol HasMutLocationP: HasLocationP {
    var location: Location {get set}
}
//public extension HasMutLocationP {
//}





//public extension Array where Element == Location {
//
//}
//
//public extension Set where Element == Location  {
//
//}
