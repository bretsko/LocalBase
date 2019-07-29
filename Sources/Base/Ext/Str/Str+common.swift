

@_exported import Foundation


public typealias CS = CharSet

extension Str {
    subscript(value: NSRange) -> Substring {
        return self[value.lowerBound..<value.upperBound]
    }
}

extension Str {
    subscript(value: CountableClosedRange<Int>) -> Substring {
        get {
            return self[index(at: value.lowerBound)...index(at: value.upperBound)]
        }
    }
    
    subscript(value: CountableRange<Int>) -> Substring {
        get {
            return self[index(at: value.lowerBound)..<index(at: value.upperBound)]
        }
    }
    
    subscript(value: PartialRangeUpTo<Int>) -> Substring {
        get {
            return self[..<index(at: value.upperBound)]
        }
    }
    
    subscript(value: PartialRangeThrough<Int>) -> Substring {
        get {
            return self[...index(at: value.upperBound)]
        }
    }
    
    subscript(value: PartialRangeFrom<Int>) -> Substring {
        get {
            return self[index(at: value.lowerBound)...]
        }
    }
    
    func index(at offset: Int) -> Str.Index {
        return index(startIndex, offsetBy: offset)
    }
}

public extension Str {
    
    
    //MARK: substr
    
    /// animals - imals - 2 = len - 2
    /// Returns a new string containing the chars of the Str from the one at a given idx, including it, to the end.
    func substr(from idx: Str.Index,
                includingIt: Bool = false) -> Str? {
        
        L.notImpl()
        //        guard hasSth, idx + 1 <= len else {
        //            return nil
        //        }
        //        return Str(suffix(len - idx + 1))
        //return substr(from: self.index(startIndex, offsetBy: idx))
    }
    
    /// Returns a new string containing the chars of the Str up to and including, the one at a given idx.
    func substr(to idx: Str.Index,
                includingIt: Bool = false) -> Str? {
        
        L.notImpl()
        //        guard hasSth, idx + 1 <= len else {
        //            return nil
        //        }
        //        return Str(prefix(len - idx))
        // var i = max(0, min(idx, len - 1))
        // return substr(to: index(startIndex, offsetBy: i))
    }
    
    
    //MARK: -
    
    /// animals - imals - 2 = len - 2
    /// Returns a new string containing the chars of the Str from the one at a given idx, including it, to the end.
    func substr(from idx: Int,
                includingIt: Bool = false) -> Str? {
        guard hasSth, idx + 1 <= len else {
            return nil
        }
        return Str(suffix(len - idx + 1))
        //return substr(from: self.index(startIndex, offsetBy: idx))
    }
    
    /// Returns a new string containing the chars of the Str up to and including, the one at a given idx.
    func substr(to idx: Int,
                includingIt: Bool = false) -> Str? {
        guard hasSth, idx + 1 <= len else {
            return nil
        }
        return Str(prefix(len - idx))
        // var i = max(0, min(idx, len - 1))
        // return substr(to: index(startIndex, offsetBy: i))
    }
    
    
    //MARK: -
    
    func substr(from char: Char,
                includingIt: Bool = false) -> Str? {
        guard let i = firstIndex(of: char) else {
            return nil
        }
        return substr(from: i, includingIt: includingIt)
    }
    
    func substr(to char: Char,
                includingIt: Bool = false) -> Str? {
        guard let i = firstIndex(of: char) else {
            return nil
        }
        return substr(to: i, includingIt: includingIt)
    }
    
    
    //MARK: -
    
    func substr(with range: CountableClosedRange<Int>) -> Str {
        return substr(with: Range(uncheckedBounds: (lower: range.lowerBound, upper: range.upperBound + 1)))
    }
    
    func substr(with range: Range<Int>) -> Str {
        //        let start = index(startIndex, offsetBy: range.lowerBound)
        //        let end = index(startIndex, offsetBy: min(chars.len - 1, range.upperBound))
        
        L.notImpl()
        //return self[start ..< end]
    }
    
    
    //MARK: has
    
    func has(_ str: Str,
             _ caseSensitive: Bool = true) -> Bool {
        if caseSensitive {
            return contains(str)
        }
        return lowercased.contains(str.lowercased)
    }
    
    /// returns false if doesnt contain any of strings
    func hasSome(_ strs: [Str],
                 _ caseSensitive: Bool = true) -> Bool {
        return strs.has{ has($0) }
    }
    func hasAll(_ strs: [Str],
                _ caseSensitive: Bool = true) -> Bool {
        return strs.allSatisfy{ self.has($0) }
    }
    
    func has(_ charSet: CS,
             _ caseSensitive: Bool = true) -> Bool {
        if caseSensitive {
            return self.cs.isSuperset(of: charSet)
        }
        //use ? CS.uppercaseLetters
        L.notImpl()
    }
    
    func hasOnly(_ charSet: CS,
                 _ caseSensitive: Bool = true) -> Bool {
        return !has(charSet.inverted, caseSensitive)
    }
    
    /// compares charSets
    func has(chars: Str,
             _ caseSensitive: Bool = true) -> Bool {
        return has(chars.cs, caseSensitive)
    }
    
    /// compares charSets
    func hasOnly(chars: Str,
                 _ caseSensitive: Bool = true) -> Bool {
        return hasOnly(chars.cs, caseSensitive)
    }
    
    
    
    func findAll(of str: Str,
                 caseSensitive: Bool = true) -> [Str]? {
        var s = str
        if !caseSensitive {
            s = s.lowercased
        }
        return lowercased.components(separatedBy: s).sth
    }
    
    ///  Verify if string matches the regex pattern.
    func matches(regexPattern: Str) -> Bool {
        return range(of: regexPattern, options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    //TODO:
    //    func occurrences(of str: Str,
    //                     caseSensitive: Bool = true) -> [IStr]? {
    //        var s = str
    //        if !caseSensitive {
    //            s = s.lowercased
    //        }
    //        return lowercased.components(separatedBy: s).sth
    //    }
    
    
    
    
    var mostCommonChar: Char? {
        return removingSpacesAndNewLines?.reduce(into: [Char: Int]()) {
            let len = $0[$1] ?? 0
            $0[$1] = len + 1
        }.max { $0.1 < $1.1 }?.0
    }
}



public extension StringProtocol where Index == Str.Index {
    
    ///  The longest common suffix.
    /// "Hello world!".commonSuffix(with: "It's cold!") = "ld!"
    /// - Parameters:
    ///     - Parameter aString: The string with which to compare the receiver.
    ///     - Parameter options: Options for the comparison.
    /// - Returns: The longest common suffix of the receiver and the given Str
    func commonSuffix<T: StringProtocol>(with aString: T,
                                         options: Str.CompareOptions = []) -> Str {
        let reversedSuffix = Str(reversed()).commonPrefix(with: Str(aString.reversed()), options: options)
        return Str(reversedSuffix.reversed())
    }
    
}
