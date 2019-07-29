


public extension Array where Element: StrEnumP {
    var strs: [Str] {
        return map{$0.s}
    }
}


public extension Set where Element: StrEnumP {
    var strs: [Str] {
        return map{$0.s}
    }
}




//public extension Array where Element: StrEnumT {
//    var hasAllCases: Bool {
//        return self == E.allCases
//    }
//}
//
//public extension Set where Element: StrEnumT {
//
//}
