
@_exported import Foundation



//TODO: + Equatable, Hashable, HasIdxP, HasRngP
//Array+BoolCond
public extension Array where Element: HasIdxP {
    
    
    //MARK:  indexes
    
    /// if any of the conds filters out all units - nil is returned without continuing (obvious)
    func indexes(where cond: BoolCond) -> [Int]? {
        return filter(cond).indexes.sth
    }
    
    func indexes(satisfyingAll conds: [BoolCond]) -> [Int]? {
        return map { a in
            conds.allSatisfy{ $0(a) } ? a.idx : nil
            }.compactMap{$0}.sth
    }
    
    /// some -> maybe all!
    func indexes(satisfyingSome conds: [BoolCond]) -> [Int]? {
        return map { a in
            conds.has{ $0(a) } ? a.idx : nil
            }.compactMap{$0}.sth
    }
    
    func indexes(satisfyingNone conds: [BoolCond]) -> [Int]? {
        return map { a in
            conds.allSatisfy{ $0(a) == false } ? a.idx : nil
            }.compactMap{$0}.sth
    }
    
    //MARK: filter indexes
    
    
    
    //TODO:
    /// if any of the conds filters out all units - nil is returned without continuing (obvious)
    //    func indexes(satisfyingAll conds: BoolCond...) -> [Int]? {
    //        return filtering(with: conds)?.indexes
    //    }
    //TODO: satisfyingSome, satisfyingNone
    
}
