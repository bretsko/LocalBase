


public extension Collection {
    typealias E = Element
    
    /// returns nil - if the array is empty
    func randItems(num: Int) -> [E]? {
        var all = [E]()
        num.times {
            if let a = randomElement() {
                all.append(a)
            }
        }
        return all.sth
    }
}

public extension RandomAccessCollection where Element: Equatable {
    
    ///  All indices of specified item.
    ///        [1, 2, 2, 3, 4, 2, 5].indices(of 2) -> [1, 2, 5]
    ///        [1.2, 2.3, 4.5, 3.4, 4.5].indices(of 2.3) -> [1]
    ///        ["h", "e", "l", "l", "o"].indices(of "l") -> [2, 3]
    /// - Parameter item: item to check.
    /// - Returns: an array with all indices of the given item.
    func indices(of item: E) -> [Index]? {
        var indices: [Index] = []
        var idx = startIndex
        while idx < endIndex {
            if self[idx] == item {
                indices.append(idx)
            }
            formIndex(after: &idx)
        }
        return indices.sth
    }
}





