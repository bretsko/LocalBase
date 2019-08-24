



public protocol HasIdxSetP: HasIdxsP {
    var idxSet: Set<Int> {get}
}

public extension HasIdxSetP {
    
    // HasIdxsP
    var indexes: [Int] {
        return Array(idxSet)
    }
    
    //todo - set funcs
}



public protocol HasMutIndexSetP: HasIdxSetP { //? HasMutIdxsP
    var idxSet: Set<Int> {get set}
    
    // true if inserted
    //    @discardableResult
    //    func insert(_ idx: Int) -> Bool
}
public extension HasMutIndexSetP {
    
    // HasIdxsP
    var indexes: [Int] {
        get {
            return Array(idxSet)
        }
        set {
            idxSet = Set(newValue)
        }
    }
    
    //todo - set funcs
}



public protocol IndexSetHashableT: HasIdxSetP, Hashable {}

public extension IndexSetHashableT {
    var hashValue: Int {
        return idxSet.hashValue
    }
}




//public extension HasMutIndexSetP {
//
//    // true if inserted
//    @discardableResult
//    mutating func insert(_ idx: Int) -> Bool {
//        return idxSet.insert(idx).inserted
//    }
//
//    // true if removed
//    @discardableResult
//    mutating func remove(_ idx: Int) -> Bool {
//        return idxSet.remove(idx) != nil
//    }
//}


// HasMutIdxsP, order not preserved
//    var indexes: [Int] {
//        get {
//            return Array(idxSet)
//        }
//        set {
//            idxSet = Set(idxSet)
//        }
//    }
//}


//public protocol HasIndexSet_P: HasIdxs_P {
//    var _indexSet: Set<Int>? {get}
//}
//public extension HasIndexSet_P {
//
//    // HasIdxs_P
//    var _indexes: [Int]? {
//        return _indexSet?.array
//    }
//}


//public protocol HasIndexSet_P: HasIdxs_P {
//    var _indexSet: Set<Int>? {get}
//}
//public extension HasIndexSet_P {
//
//    // HasIdxs_P
//    var _indexes: [Int]? {
//        return _indexSet?.array
//    }
//}
