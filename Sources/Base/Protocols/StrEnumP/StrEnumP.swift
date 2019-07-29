

public protocol StrEnumP: RawValueInitableP, HasStrRawValueP, HasStaticStringsP, HasDescrP {}


public extension StrEnumP where Self: HasDescrP {
    var descr: Str {
        // or type(of:self)
        return Str(describing: Self.self) + ".\(rawValue)"
    }
}

public protocol StrEnumT: StrEnumP, Hashable, Comparable, CaseIterable, HasAllStatesP {}

public extension StrEnumT {
    
    static var strs: [Str] {
        return allCases.map{$0.s}
    }
    
    /// crashes if enum is empty
    static var randomCase: Self {
        return Array(allCases)[Int.rand(allCases.count)]
    }
    
    //HasAllStatesP
    static func allStates() -> [Self] {
        return allCases as! [Self] //?
    }
}

//public extension Array where Element: StrEnumT {
//    var strs: [Str] {
//        return allCases.map{$0.s}.flatMap{$0}
//    }
//}



/// type in which each enum case is convertible to string
//public protocol DescribableStrEnumP: StrEnumT, Describable {
//   // var contentsDescription: Str {get}
//}

//public protocol DescribableStrEnumP: StrEnumT, DescribableEnumP {
//}
