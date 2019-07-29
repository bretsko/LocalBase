

@_exported import Foundation



public extension Str {
    
    //MARK: remove
    
    /// if no prefix - returns nil
    func removing(prefix: Str) -> Str? {
        guard hasPrefix(prefix) else {
            return nil
        }
        if let a = dropFirst(prefix.len).sth {
            return Str(a)
        }
        return nil
    }
    
    /// if no suffix - returns nil
    func removing(suffix: Str) -> Str? {
        guard hasSuffix(suffix) else {
            return nil
        }
        if let a = dropLast(suffix.len).sth {
            return Str(a)
        }
        return nil
    }
    
    
    //MARK: mutating
    
    /// if no prefix - no effect
    @discardableResult
    mutating func remove(prefix: Str) -> Bool {
        if let a = removing(prefix:prefix) {
            self = a
            return true
        }
        return false
    }
    
    /// if no suffix - no effect
    @discardableResult
    mutating func remove(suffix: Str) -> Bool {
        if let a = removing(suffix:suffix) {
            self = a
            return true
        }
        return false
    }
    
    //MARK: remove first, last
    
    var removingLast: Str? {
        if let a = dropLast().sth {
            return Str(a)
        }
        return nil
    }
    
    /// if num > str length - returns the same string
    func removingLast(_ num: Int) -> Str? {
        guard len >= num else {
            return nil
        }
        if let a = dropLast(num).sth {
            return Str(a)
        }
        return nil
    }
    
    var removingFirst: Str? {
        if let a = dropFirst().sth {
            return Str(a)
        }
        return nil
    }
    
    /// if num > str length - returns the same string
    func removingFirst(_ num: Int) -> Str? {
        guard len >= num else {
            return nil
        }
        if let a = dropFirst(num).sth {
            return Str(a)
        }
        return nil
    }
    
    /// if num > str length - no effect
    @discardableResult
    mutating func removeLast(_ num: Int) -> Bool {
        if let a = removingLast(num) {
            self = a
            return true
        }
        return false
    }
    
    /// if num > str length - no effect
    @discardableResult
    mutating func removeFirst(_ num: Int) -> Bool {
        if let a = removingFirst(num) {
            self = a
            return true
        }
        return false
    }
    
    @discardableResult
    mutating func removeLast() -> Bool {
        if let a = removingLast {
            self = a
            return true
        }
        return false
    }
    
    @discardableResult
    mutating func removeFirst() -> Bool {
        if let a = removingFirst {
            self = a
            return true
        }
        return false
    }
    
    
    //MARK: remove 2
    
    /// if no suffix - returns nil
    func removing(suffix: Str,
                  adding suffix2: Str) -> Str? {
        
        guard hasSuffix(suffix) else {
            return nil
        }
        var s = self
        s.remove(suffix: suffix)
        return s + suffix2
    }
    
    /// if no prefix1 - returns nil
    func removing(prefix: Str,
                  adding prefix2: Str) -> Str? {
        guard hasPrefix(prefix) else {
            return nil
        }
        var s = self
        s.remove(prefix: prefix)
        return prefix2 + s
    }
    
    
    /// if no suffix - no effect
    mutating func remove(suffix: Str,
                         add suffix2: Str) -> Bool {
        guard hasSuffix(suffix) else {
            return false
        }
        removeLast(suffix.len)
        self += suffix2
        return true
    }
    
    /// if no prefix - no effect
    mutating func remove(prefix: Str,
                         add prefix2: Str) -> Bool {
        guard hasPrefix(prefix) else {
            return false
        }
        removeFirst(prefix.len)
        self = prefix2 + self
        return true
    }
    
    
    
    //TODO: ??
    
    //    @discardableResult
    //    mutating func removeAll<T: StringProtocol>(of str: T) -> Bool {
    //        let oldLen = len
    //        let a = replacingOccurrences(of: str, with: "")
    //        if oldLen != len {
    //            self = a
    //            return true
    //        }
    //        return false
    //    }
    //    func removingAll<T: StringProtocol>(of str: T) -> Str {
    //        return replacingOccurrences(of: str, with: "")
    //    }
    //
    //    @discardableResult
    //    mutating func removeSpaces() -> Bool {
    //        return removeAll(of: " ")
    //    }
    //    var removingSpaces: Str? {
    //        return removingAll(of: " ")
    //    }
    //
    //    @discardableResult
    //    mutating func removeNewLines() -> Bool {
    //        return removeAll(of: "\n")
    //    }
    //    var removingNewLines: Str? {
    //        return removingAll(of: "\n")
    //    }
    //
    //    /// returns false if any fails, but false doesnt mean nothing changed!!
    //    @discardableResult
    //    mutating func removeSpacesAndNewLines() -> Bool {
    //        return removeSpaces() && removeNewLines()
    //    }
    //    var removingSpacesAndNewLines: Str? {
    //        return removingSpaces?.removingNewLines
    //    }
    
}

