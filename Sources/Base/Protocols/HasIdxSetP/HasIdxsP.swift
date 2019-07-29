

import Foundation

/// assumes to always contain at least 2 indices
public protocol HasIdxsP {
    var indexes: [Int] {get}
}


public extension HasIdxsP {
    
    // RangeP
    var from: Int {
        return indexes.min()!
    }
    // RangeP
    var to: Int {
        return indexes.max()!
    }

    
    var has1: Bool {
        return indexes.len == 1
    }
    /// if has only one unit - returns index
    var index: Int? {
        return has1 ? indexes.first : nil
    }
    
    //MARK: funcs
    
    /// indexes contain given idx
    func contains(_ idx: Int) -> Bool {
        return indexes.contains(idx)
    }
    
    /// indexes contain given idx
    func contains(_ idxs: [Int]) -> Bool {
        return indexes.contains(idxs)
    }
    
    //MARK: get range
    
    func getIndexes(moreThan idx: Int,
                    includingIt: Bool = false) -> [Int]? {
        if includingIt {
            return indexes.filterSth{$0 >= idx }
        } else {
            return indexes.filterSth{$0 > idx }
        }
    }
    
    func getIndexes(lessThan idx: Int,
                    includingIt: Bool = false) -> [Int]? {
        if includingIt {
            return indexes.filterSth{$0 <= idx }
        } else {
            return indexes.filterSth{$0 < idx }
        }
    }
    
    func getIndexes(from idx1: Int,
                    to idx2: Int,
                    includingBoth: Bool = false) -> [Int]? {
        if includingBoth {
            return indexes.filterSth{$0 >= idx1 && $0 <= idx2}
        } else {
            return indexes.filterSth{$0 > idx1 && $0 < idx2}
        }
    }
}


//public protocol HasIdxs_P {
//    var _indexes: [Int] {get}
//}

//public extension HasIdxsP {
//}


//public protocol HasMutIdxsP: HasIdxsP {
//    var indexes: [Int] {get set}
//}

//public extension HasMutIdxsP {
//}
