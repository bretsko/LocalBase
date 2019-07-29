


public protocol HasUnitT: HasUnitTypeT {
    var unit: U {get}
}
public protocol HasEUnitT: HasUnitT, HasEUnitTypeT {}
public protocol HasHUnitT: HasUnitT, HasHUnitTypeT {}


public extension Array where Element: HasUnitT {
//    var units: [E.U] {
//        return map{$0.unit}
//    }
}

//public extension Set where Element: HasUnitT {
//
//}
