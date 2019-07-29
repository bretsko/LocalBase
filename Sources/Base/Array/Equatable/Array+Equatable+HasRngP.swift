


//MARK: Equatable, HasRngP


//public extension Array where Element: Equatable & HasIdxP {
//
//    /// contains all
//    /// range of this array
//    func contains(_ items: Array,
//                  in rng: Rng) -> Bool {
//        return units(in: range)?.contains(items) == true
//    }
//    /// range of this array
//    func contains(some items: Array,
//                      in rng: Rng) -> Bool {
//        return units(in: range)?.contains(some: items) == true
//    }
//    /// range of this array
//    func contains(no items: Array,
//                      in rng: Rng) -> Bool {
//        return !contains(some: items, in: range)
//    }
////TODO: add conv has()

//    //MARK: removeDuplicates
//
//    /// returns true if any were removed
//    @discardableResult
//    mutating func removeDuplicates(in rng: Rng) -> Bool {
//        if let a = removingDuplicates(in: range) {
//            self = a
//            return true
//        }
//        return false
//    }
//
//    /// returns new array if any were removed
//    /// (if empty array was given it is returned)
//    func removingDuplicates(in rng: Rng) -> Array? {
//        return units(in: range)?.removingDuplicates
//    }
//
//    func containsDuplicates(in rng: Rng) -> Bool {
//        return removingDuplicates(in: range) != nil
//    }
//
//    //MARK: indexes
//
//    /// uses Equatable to check
//
//    func indexes(of item: E, in rng: Rng) -> [Int]? {
//        return units(in: range)?.indexes(of: item)
//    }
//
//    //MARK: unique
//
//    /// empty array can be returned
//    func uniqueElements(in rng: Rng) -> Array? {
//        return units(in: range)?.uniqueElements
//    }
//
//    /// shifts indices
//    /// returns false if some were not added
//    @discardableResult
//    mutating func insertUnique(_ items: Array,
//                               at index: Int) -> Bool {
//        L.notImpl()
//        //        guard !items.isEmpty else {
//        //            return false
//        //        }
//        //        var added = true
//        //        for item in items {
//        //            if !contains(item) {
//        //                self.append(item)
//        //            } else {
//        //                added = false
//        //            }
//        //        }
//        //        return added
//    }
//}

//TODO: cond, matchCond
