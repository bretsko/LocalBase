

//TODO: subclass from this protocol by adding Str value, etc
// the same as CaseIterableP ?
public protocol HasAllStatesP { //HasAvgStateP
    static func allStates() -> [Self]
}

public extension HasAllStatesP {
    
    static var numStates: Int {
        return allStates().len
    }
    
    /// single obj probability = 1 / numStates
    static var singleObjProbability: Double {
        return 1.0 / numStates.d
    }
    
    
    //BAD
    /// does not check if objs in objSet are different
    /// objSet.len.d / allStates().len.d
    //    static func probability(of objSet: [Self]) -> Double {
    //        return probability(of: objSet.len)
    //    }
    
    //TODO: ??
    /// probability that the provided count of different objs appears when randomly picking or generating such objs
    //    static func probability(of diffNumObjs: Int) -> Double {
    //        crashIfNegative(diffNumObjs)
    //        return diffNumObjs.d / numStates.d
    //    }
    
    //    static var allStates_op: [Self?] {
    //        return allStates as [Self?]
    //    }
}

//public extension HasAllStatesP where Self: CaseIterable {
//    
//    static func allStates -> [Self] {
//        return allCases as! [Self] //?
//    }
//}


// the same as HasAllStatesP ?
//public protocol CaseIterableP {
//    static var allValues: [Self] {get}
//}
//public extension CaseIterableP {
//}
