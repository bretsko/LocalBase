
@_exported import Foundation

public extension Str {
    
    var chars: [Char] {
        return Array<Char>(self)
    }
    var charSet: Set<Char> {
        return Set(chars)
    }
    var cs: CS {
        return CS(charactersIn: self)
    }
    /// returns nil - if the array is empty
    func randChars(num: Int) -> [Char]? {
        if let a = chars.randItems(num:num) {
            return a
        }
        return nil
    }
    
    var lowercased: Str {
        return lowercased()
    }
    var uppercased: Str {
        return uppercased()
    }
    var randChar: Char? {
        return randomElement()
    }
    
    var shuffled: Str {
        var a = chars
        a.shuffle()
        return Str(a)
    }
    
    /// filters all punctuation and lowercases
    var preprocessed: Str {
        return filter {
            !"_-()\"'.:;,!?\n\t".contains($0) }
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased
    }
    
    /// takes 1st char!
    var char1: Str? {
        return first?.s
    }
    
    /// newline separated string
    var lines: [Str]? {
        return divided(by: CS.newlines)
    }
    
    /// lines with trimmed spaces
    var nonEmptyLines: [Str]? {
        return lines?.filterSth{ $0.trimmingSpaces.hasSth }
    }
    var words: [Str]? {
        return divided(by: CS.whitespacesAndNewlines)
    }
    
    
    //MARK: subscript
    
    subscript(i: Int) -> Char  {
        get {
            let a = index(startIndex, offsetBy: i)
            return self[a]
        }
    }
    subscript(i: Int) -> Str  {
        return Str(self[i] as Char)
    }
}
