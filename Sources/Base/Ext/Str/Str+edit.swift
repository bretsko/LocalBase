

@_exported import Foundation



public extension Str {
    
    //MARK: removing
    
    @discardableResult
    mutating func removeAll<T: StringProtocol>(of str: T) -> Bool {
        let oldLen = len
        let a = replacingOccurrences(of: str, with: "")
        if oldLen != len {
            self = a
            return true
        }
        return false
    }
    func removingAll<T: StringProtocol>(of str: T) -> Str {
        return replacingOccurrences(of: str, with: "")
    }
    
    @discardableResult
    mutating func removeSpaces() -> Bool {
        return removeAll(of: " ")
    }
    var removingSpaces: Str? {
        return removingAll(of: " ")
    }
    
    @discardableResult
    mutating func removeNewLines() -> Bool {
        return removeAll(of: "\n")
    }
    var removingNewLines: Str? {
        return removingAll(of: "\n")
    }
    
    /// returns false if any fails, but false doesnt mean nothing changed!!
    @discardableResult
    mutating func removeSpacesAndNewLines() -> Bool {
        return removeSpaces() && removeNewLines()
    }
    var removingSpacesAndNewLines: Str? {
        return removingSpaces?.removingNewLines
    }
    
    
    //MARK: -
    
    var trimmingSpaces: Str {
        return trimmingCharacters(in: .whitespaces)
    }
    var trimmingSpacesAndNewlines: Str {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
}

