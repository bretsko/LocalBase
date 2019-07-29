
////Array+Hashable
//public extension Array where Element: Hashable {

// SetType OR [E]
public extension Collection where Element: Hashable {
    typealias SetType = Set<E>
    
    var set: SetType {
        return SetType(self)
    }
    
    //MARK: contains Set
    
    func contains(all units: SetType) -> Bool {
        return set.isSuperset(of: units)
    }
    func contains(no units: SetType) -> Bool {
        return set.isDisjoint(with: units)
    }
    /// some -> maybe all!
    func contains(some units: SetType) -> Bool {
        return !contains(no: units)
    }
    
    /// contains all
    func has(all units: SetType) -> Bool {
        return contains(all: units)
    }
    /// some -> maybe all!
    /// contains
    func has(some units: SetType) -> Bool {
        return contains(some:units)
    }
    /// contains no
    func has(no units: SetType) -> Bool {
        return contains(no: units)
    }
    
    //TODO: more Set funcs
    

    //MARK: freq
    
    func indexTable() -> [E : [Int]]? {
        L.notImpl()
//        var r = [E : [Int]]()
//        uniqueElements.forEach { unit in
//
//            r[unit] = self.indices(where: {$0 == unit})
//        }
//        return r.sth
    }
    
    func freqTable() -> [E : Int]? {
        var r = [E : Int]()
        uniqueElements.forEach { unit in
            
            r[unit] = count{$0 == unit}
            
//            if r[$0] == nil {
//                r[$0] = 1
//            } else {
//                r[$0]! += 1
//            }
        }
        return r.sth
    }
    
    
    //MARK: random

    /// returns nil - if the array is empty
//    func randItems(num: Int) -> SetType? {
//        if let a = randItem(num:num) {
//            return SetType(a)
//        }
//        return nil
//    }
    
    //MARK: group
    
    /// grouped into equal units
    var grouped: [Set<E>]? {
        var groups = [Set<E>]()
        
        forEach { unit1 in
            groups.enumerated().forEach { i,group in
                 group.forEach { unit2 in
                    
                    if unit1 == unit2 {
                        groups[i].insert(unit1, unit2)
                    }
                }
            }
        }
        return groups.sth
    }
    
//    var grouped: [[E]]? {
//        return grouped(with: { $0 == $1 })
//    }
}








