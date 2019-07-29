

@_exported import Foundation



public extension Str {
    
    
    //MARK: divided
    
    /// only returns array of non-empty strings
    func divided(by charSet: CS) -> [Str]? {
        return components(separatedBy: charSet)//.filterWords
    }
    
    /// only returns array of non-empty strings
    func dividedBy(chars: Str) -> [Str]? {
        return divided(by: chars.cs)
    }
    
    /// returns nil if doesnt contain given str
    /// only returns array of non-empty strings
    func divided(by str: Str,
                 _ caseSensitive: Bool = true) -> [Str]? {
        guard has(str, caseSensitive) else {
            return nil
        }
        L.notImpl()
        //return
    }
    
    
    /// returns nil if doesnt contain any of strings
    //    func divided(by strs: [Str],
    //                 _ caseSensitive: Bool = true) -> [Str]? {
    //
    //        //TODO: divided several times or once ??
    //        // for ex
    //        // "cat. is, small".divided(by: [",", "."])
    //        // can produce
    //        // 1 - ["cat", "is", "small"]
    //        // 2 - ["cat", "cat, is small"] OR ["cat. is", "small"]
    //
    //
    //        L.notImpl()
    ////        guard has(strs, caseSensitive) else {
    ////            return nil
    ////        }
    ////        return strs.reduce([Str], { arr, str in
    ////            if let a = divided(by:str, caseSensitive) {
    ////                return arr + a
    ////            }
    ////            return arr
    ////            //components(separatedBy: str.charSet).sth
    ////        }).sth
    //    }
    
    
    //MARK: divided
    
    /// returns at least self in array!
    /// only returns array of non-empty strings
    func divided_(by charSet: CS) -> [Str] {
        if let a = divided(by:charSet) {
            return a
        }
        return [self]
    }
    /// returns at least self in array!
    /// only returns array of non-empty strings
    func dividedBy_(chars: Str) -> [Str] {
        if let a = divided(by:chars) {
            return a
        }
        return [self]
    }
    
    /// returns at least self in array!
    /// only returns array of non-empty strings
    func divided_(by str: Str,
                  _ caseSensitive: Bool = true) -> [Str] {
        if let a = divided(by:str, caseSensitive) {
            return a
        }
        return [self]
    }
    
    
    // ????
    //MARK: divide
    //
    //    /// returns false if doesnt contain given charSet
    //    @discardableResult
    //    mutating func divide(by charSet: CS) -> Bool {
    //        if let a = divided(by:charSet) {
    //            self = a
    //            return true
    //        }
    //        return false
    //    }
    //
    //    /// returns false if doesnt contain given chars
    //    @discardableResult
    //    mutating func divideBy(chars: Str) -> Bool {
    //        if let a = divided(by:chars) {
    //            self = a
    //            return true
    //        }
    //        return false
    //    }
    //
    //    /// returns false if doesnt contain given str
    //    @discardableResult
    //    mutating func divide(by str: Str,
    //                 _ caseSensitive: Bool = true) -> Bool {
    //        if let a = divided(by:str, caseSensitive) {
    //            self = a
    //            return true
    //        }
    //        return false
    //    }
    //
    
    
}

