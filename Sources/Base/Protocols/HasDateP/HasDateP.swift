

import Foundation

public protocol HasDateP {
    var date: Date {get}
}
//public extension HasDateP {
//}



public protocol DateHashableT: HasDateP, Hashable {}
public extension DateHashableT {
    var hashValue: Int {
        return date.hashValue
    }
}

public protocol DateComparableT: HasDateP, Comparable {}
public extension DateComparableT {
    static func < (lhs: Self, rhs: Self) -> Bool {
        L.notImpl()
    }
}


public protocol HasDate_P {
    var _date: Date? {get}
}
//public extension HasDate_P {
//}
