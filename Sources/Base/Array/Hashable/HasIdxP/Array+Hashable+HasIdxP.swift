//
//
//
//
////Array+Hashable
//public extension Array where Element: Hashable & HasIdxP {
//
//    var set: Set<E> {
//        return Set(self)
//    }
//    
//    //MARK: contains
//
//    /// contains all
//    /// range of this array
//    func contains(all items: Set<E>,
//                  in rng: Rng) -> Bool {
//        return units(in: rng)?.contains(all: items) == true
//    }
//
//    /// some -> maybe all!
//    /// range of this array
//    func contains(some items: Set<E>,
//                  in rng: Rng) -> Bool {
//        return units(in: rng)?.contains(some:items) == true
//    }
//
//    /// range of this array
//    func contains(no items: Set<E>,
//                  in rng: Rng) -> Bool {
//        return units(in: rng)?.contains(no: items) == true
//    }
//
//
//    /// contains all
//    /// range of this array
//    func contains(_ items: Array,
//                  in rng: Rng) -> Bool {
//        return units(in: rng)?.contains(items) == true
//    }
//
//    /// some -> maybe all!
//    /// range of this array
//    func contains(some items: Array,
//                  in rng: Rng) -> Bool {
//        return units(in: rng)?.contains(some: items) == true
//    }
//
//    /// range of this array
//    func contains(no items: Array,
//                  in rng: Rng) -> Bool {
//        guard let a = units(in: rng) else {
//            return true
//        }
//        return a.contains(no: items)
//    }
//
//
//    //TODO: contains items at indices ?
//
//
//    //TODO: more Set funcs
//}
//
//
////TODO: cond, matchCond
//
//
//
//
//
//
