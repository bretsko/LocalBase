

import Foundation


public extension HasIdxSetP {
    
    
    //MARK: index
    
    /// means idx is between from and to
    func hasInside(_ idx: Int,
                   includingEnds: Bool = true) -> Bool {
        if includingEnds {
            return idx >= from || idx <= to
        } else {
            return idx > from || idx < to
        }
    }
    
    /// means idx is bigger than to or less than from
    func hasOutside(_ idx: Int) -> Bool {
        return idx < from || idx > to
    }
    
    
    //MARK: index set
    
    /// means all given idxs are outside
    func hasOutside(_ idxs: Set<Int>) -> Bool {
        return idxSet.isDisjoint(with: idxs)
    }
    
    
    /// = hasSomeInside
    /// some -> maybe all!
    func contains(some idxs: Set<Int>) -> Bool {
        return hasSomeInside(idxs)
    }
    /// means all given idxs are inside
    /// some -> maybe all!
    func hasSomeInside(_ idxs: Set<Int>) -> Bool {
        return !idxSet.isDisjoint(with: idxs)
        //!idxSet.intersection(idxs).isEmpty
    }
    
    /// = hasAllInside
    func containsAll(_ idxs: Set<Int>) -> Bool {
        return hasAllInside(idxs)
    }
    /// means all given idxs are inside
    func hasAllInside(_ idxs: Set<Int>) -> Bool {
        return idxSet.isSuperset(of: idxs)
        //!idxSet.intersection(idxs).isEmpty
    }
    
    
    /// means given idxs contain all indices
    func isPartOf(_ idxs: Set<Int>) -> Bool {
        return idxSet.isSubset(of: idxs)
    }
    
    
    //MARK: index array
    
    
    /// means all given idxs are outside
    func hasOutside(_ idxs: [Int]) -> Bool {
        return hasOutside(Set(idxs))
    }
    
    /// = hasSomeInside
    /// some -> maybe all!
    func contains(some idxs: [Int]) -> Bool {
        return contains(some: Set(idxs))
    }
    /// means all given idxs are inside
    /// some -> maybe all!
    func hasSomeInside(_ idxs: [Int]) -> Bool {
        return hasSomeInside(Set(idxs))
    }
    
    /// = hasAllInside
    func containsAll(_ idxs: [Int]) -> Bool {
        return containsAll(Set(idxs))
    }
    /// means all given idxs are inside
    func hasAllInside(_ idxs: [Int]) -> Bool {
        return hasAllInside(Set(idxs))
    }
    
    /// means given idxs contain all indices
    func isPartOf(_ idxs: [Int]) -> Bool {
        return isPartOf(Set(idxs))
    }
}


