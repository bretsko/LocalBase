
public protocol IdxHashableT: Hashable, HasIdxP {}
public extension IdxHashableT {
    
    func hash(into h: inout Hasher) {
        h.combine(idx)
    }
}

public extension Array where Element: IdxHashableT {
    
    var iset: Set<E> {
        get {
            return set
        }
        set {
            self = newValue.array
        }
    }
}

public typealias IdxMutHashableT = IdxHashableT & HasMutIdxP

//public extension Array where Element: IdxMutHashableT {

    // if idx is not provided, uses the nextIdx
    /// returns true if added
//    @discardableResult
//    mutating func insert(_ units: [E],
//                         before idx: Int) -> Bool {
//
//        // check if can insert
//        crashIfFalse( units.hasSth,
//                      hasUnit(with: idx) )
//
//        // how to insert?
//        //let units = getUnits(at: [idx])
//
//        L.notImpl()
//        //        let afterWords = getUnits(after: idx).units
//        //        let beforeWords = getUnits(before: idx).units
//        //
//        //        let all = (beforeWords + units + afterWords).units
//        //        iwSet = Set(all)
//        //        return true
//    }
    
    //TODO:
    // if idx is not provided, uses the nextIdx
    /// returns true if added
//    @discardableResult
//    mutating func insert(_ units: [E],
//                         after idx: Int) -> Bool {
//
//        // check if can insert
//        crashIfFalse( units.hasSth,
//                      hasUnit(with: idx) )
//
//        L.notImpl()
//        // how to insert?
//        //        let a = getUnits(before: idx).units
//        //        let b = getUnits(after: idx).units
//        //
//        //        let all = (a + units + b).units
//        //        iwSet = Set(all)
//        //        return true
//
//    }
//
//    // if idx is not provided, uses the nextIdx
//    /// returns true if added
//    @discardableResult
//    mutating func insert(_ units: [E],
//                         indices: [Int]) -> Bool {
//        crashIfNegative(indices)
//
//        crashIfFalse( units.hasSth,
//                      units.len == indices.len )
//
//        var added = 0
//        for i in 0..<indices.len {
//            if insert(units[i], idx: indices[i]) {
//                added += 1
//            }
//        }
//        return added == units.len
//    }
//
//
//    // if idx is not provided, uses the nextIdx
//    /// returns true if added
//    @discardableResult
//    mutating func insert(_ unit: E,
//                         idx: Int? = nil) -> Bool {
//        let i: Int
//        if let idx = idx {
//            crashIfNegative(idx)
//            i = idx
//        } else {
//            i = 0
//        }
//        return iset.insert(Unit(unit, i)).inserted
//    }
//}

