
@_exported import Foundation



//TODO: + Equatable, Hashable, HasIdxP, HasRngP
//Array+BoolCond
public extension Array {
    
    //MARK: -
    
    func noneSatisfy(_ cond: @escaping BoolCond) -> Bool {
        return !allSatisfy{cond($0)}
    }
    /// some -> maybe all!
    func has(_ cond: BoolCond) -> Bool {
        return contains(where: { cond($0) })
    }
    
    /// some -> maybe all!
    func someSatisfy(_ cond: BoolCond) -> Bool {
        return has{cond($0)}
    }

    /// some -> maybe all!
    func someNotSatisfy(_ cond: BoolCond) -> Bool {
        return !someSatisfy(cond)
    }
    
   
    
    //MARK: -
    
    func allSatisfy(_ conds: [BoolCond]) -> Bool {
        if conds.isEmpty { // or crash?
            return false
        }
        return allSatisfy{ unit in
            conds.allSatisfy { $0(unit) }
        }
    }
    /// some -> maybe all!
    /// maybe all!
    func someSatisfy(_ conds: [BoolCond]) -> Bool {
        if conds.isEmpty { // or crash?
            return false
        }
        return has{  unit in
            conds.has{ $0(unit) }
        }
    }
    func noneSatisfy(_ conds: [BoolCond]) -> Bool {
        return !someSatisfy(conds)
    }
    /// some -> maybe all!
    /// maybe all!
    func someNotSatisfy(_ conds: [BoolCond]) -> Bool {
        if conds.isEmpty { // or crash?
            return false
        }
        return has{  unit in
            conds.has{ $0(unit) == false }
        }
    }
    
    //MARK: -
    
    func allSatisfy(_ conds: BoolCond...) -> Bool {
        if conds.isEmpty { // or crash?
            return false
        }
        return allSatisfy{ unit in
            conds.allSatisfy{ $0(unit) }
        }
    }
    /// some -> maybe all!
    func someSatisfy(_ conds: BoolCond...) -> Bool {
        if conds.isEmpty { // or crash?
            return false
        }
        return has {  unit in
            conds.has{ $0(unit) }
        }
    }
    func noneSatisfy(_ conds: BoolCond...) -> Bool {
        return !someSatisfy(conds)
    }
    
    /// some -> maybe all!
    func someNotSatisfy(_ conds: BoolCond...) -> Bool {
        if conds.isEmpty { // or crash?
            return false
        }
        return has{  unit in
            conds.has{ $0(unit) == false }
        }
    }
    
    //MARK: filter indexes
    
    
    func indexes(satisfying cond: BoolCond) -> [Int]? {
        return enumerated().map { i, a in
            cond(a) ? i : nil
            }.compactMap{$0}.sth
    }
    
    func indexes(satisfyingAll conds: [BoolCond]) -> [Int]? {
        return enumerated().map { i, a in
            conds.allSatisfy{ $0(a) } ? i : nil
            }.compactMap{$0}.sth
    }
    
    /// some -> maybe all!
    func indexes(satisfyingSome conds: [BoolCond]) -> [Int]? {
        return enumerated().map { i, a in
            conds.has{ $0(a) } ? i : nil
            }.compactMap{$0}.sth
    }
    
    func indexes(satisfyingNone conds: [BoolCond]) -> [Int]? {
        return enumerated().map { i, a in
            conds.allSatisfy{ $0(a) == false} ? i : nil
            }.compactMap{$0}.sth
    }
    
    
    //MARK: count
    
    func count(_ cond: BoolCond) -> Int {
        return filter{cond($0)}.len
    }
    
    func count(satisfyingAll conds: [BoolCond]) -> Int {
        return indexes(satisfyingAll: conds)?.len ?? 0
    }
    /// some -> maybe all!
    func count(satisfyingSome conds: [BoolCond]) -> Int {
        return indexes(satisfyingSome: conds)?.len ?? 0
    }
    
    func count(satisfyingNone conds: [BoolCond]) -> Int {
        return indexes(satisfyingNone: conds)?.len ?? 0
    }
    
    //MARK: divided by cond
    
    ///   Separates an array into 2 arrays based on a predicate.
    ///     [0, 1, 2, 3, 4, 5].divided { $0 % 2 == 0 } -> ( [0, 2, 4], [1, 3, 5] )
    /// - Returns: 2 arrays, the first containing the units for which the specified condition evaluates to true, the second containing the rest.
    func divided(by cond: BoolCond) -> BoolPair<E> {
        var matching = Array()
        var nonMatching = Array()
        forEach {
            if cond($0) {
                matching.append($0)
            } else {
                nonMatching.append($0)
            }
        }
        return BoolPair(trues: matching, falses: nonMatching)
    }
    
    ///   Separates an array into 2 arrays based on a predicate.
    ///     [0, 1, 2, 3, 4, 5].divided { $0 % 2 == 0 } -> ( [0, 2, 4], [1, 3, 5] )
    /// - Returns: 2 arrays, the first containing the units for which the specified condition evaluates to true, the second containing the rest.
    func divided(by conds: [BoolCond]) -> BoolPair<E> {
        var matching = Array()
        var nonMatching = Array()
        forEach { unit in
            if conds.allSatisfy({ $0(unit) }) {
                matching.append(unit)
            } else {
                nonMatching.append(unit)
            }
        }
        return BoolPair(trues: matching, falses: nonMatching)
    }
    
    //MARK:
    
    /// peopleArray = peopleArray.filterDuplicate{ ($0.name, $0.age, $0.sex) }
    func filterDuplicates<T>(with keyValue: (E) -> T ) -> Array {
        var uniqueKeys = Set<Str>()
        return filter{uniqueKeys.insert("\(keyValue($0))").inserted}
    }
    
    
    //MARK: unique
    
    /// empty array can be returned
    //    var uniqueElements: Array {
    //        var all: Array = []
    //        forEach { item in
    //            if !all.contains(item) {
    //                all += [item]
    //            }
    //        }
    //        return all
    //    }
    
    /// strange func, why use it?
    /// if current array doesnt satisfy any of the conds, adds any of the items in provided array(items), which satisfy the unsatisfied cond
    /// returns false if some were not added
    //    @discardableResult
    //    mutating func addUnique(_ items: Array,
    //                            satisfying conds: [BoolCond]) -> Bool {
    //
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
    
    
    
    ///  Skip units of Array while condition is true.
    /// [0, 2, 4, 7, 6, 8].skip( where: {$0 % 2 == 0}) -> [6, 8]
    /// - Parameter condition: condition to evaluate each unit against.
    /// - Returns: All units after the condition evaluates to false.
    //    func skip(while condition: BoolCond) -> Array {
    //        for (i, unit) in lazy .enumerated()
    //            where  !condition(unit) {
    //
    //                return Array(self[i ..< endIndex])
    //        }
    //        return Array()
    //    }
    ///  Keep units of Array while condition is true.
    ///        [0, 2, 4, 7].keep( where: {$0 % 2 == 0}) -> [0, 2, 4]
    /// - Parameter condition: condition to evaluate each unit against.
    /// - Returns: self after applying provided condition.
    /// - Throws: provided condition exception.
    //    @discardableResult
    //    mutating func keep(while condition: BoolCond) -> Array {
    //        for (i, unit) in lazy .enumerated() where  !condition(unit) {
    //            self = Array(self[startIndex ..< i])
    //            break
    //        }
    //        return self
    //    }
    //
    //    ///  Take unit of Array while condition is true.
    //    /// [0, 2, 4, 7, 6, 8].take( where: {$0 % 2 == 0}) -> [0, 2, 4]
    //    /// - Parameter condition: condition to evaluate each unit against.
    //    /// - Returns: All units up until condition evaluates to false.
    //    func take(while condition: BoolCond) -> Array {
    //        for (i, unit) in lazy .enumerated() where  !condition(unit) {
    //            return Array(self[startIndex ..< i])
    //        }
    //        return self
    //    }
}


//MARK: Equatable, HasIdx

//public extension Array where Element: Equatable & HasIdxP {
//
//    /// uses Equatable to check
//    func indexes(of item: E, in rng: Rng) -> [Int]? {
//        L.notImpl()
////        var indexes: [Int] = []
////        for idx in 0 ..< len {
////            if self[idx] == item {
////                indexes.append(idx)
////            }
////        }
////        return indexes.sth
//    }
//
//    //MARK: unique
//
//    /// empty array can be returned
//    func uniqueElements(in rng: Rng) -> Array {
//        L.notImpl()
////        var all: Array = []
////        forEach { item in
////            if !all.contains(item) {
////                all += [item]
////            }
////        }
////        return all
//    }
//
//    /// returns false if some were not added
//    @discardableResult
//    mutating func addUnique(_ items: Array,
//                            in rng: Rng) -> Bool {
//L.notImpl()
////        guard !items.isEmpty else {
////            return false
////        }
////        var added = true
////        for item in items {
////            if !contains(item) {
////                self.append(item)
////            } else {
////                added = false
////            }
////        }
////        return added
//    }
//
//    /// contains all
//    func contains(_ items: Array,
//                  in rng: Rng) -> Bool {
//        return allSatisfy{items.contains($0)}
//    }
//    func contains(some items: Array,
//                      in rng: Rng) -> Bool {
//        return contains{items.contains($0)}
//    }
//    func containsNone(_ items: Array,
//                      in rng: Rng) -> Bool {
//        return !contains(some:items)
//    }
//
//
//    //MARK: removeDuplicates
//
//    /// returns true if any were removed
//    @discardableResult
//    mutating func removeDuplicates(in rng: Rng) -> Bool {
//        L.notImpl()
////        let oldLen = len
////        if let a = removingDuplicates {
////            self = a
////            return oldLen != len
////        } else {
////            return false
////        }
//    }
//
//    /// returns new array if any were removed
//    /// (if empty array was given it is returned)
//    func removingDuplicates(in rng: Rng) -> Array? {
//        L.notImpl()
////        let oldLen = len
////        let a = reduce(into: Array()) {
////            if !$0.contains($1) {
////                $0.append($1) }}
////        if a.len != oldLen {
////            return a
////        } else {
////            return nil
////        }
//    }
//
//    var containsDuplicates(in rng: Rng) -> Bool {
//        L.notImpl()
//        //return removingDuplicates != nil
//    }
//}

//MARK: Equatable, HasRngP

