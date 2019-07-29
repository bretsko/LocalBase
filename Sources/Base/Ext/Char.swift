
import Foundation



public extension Char {
    
    var s: Str {
        return Str(self)
    }
    
    var unicodeScalar: UnicodeScalar {
        return unicodeScalars.first!
    }
    var int: Int? {
        return Int(s)
    }
    var isInt: Bool {
        return int != nil
    }
    
    //MARK: -
    
    var isDigit: Bool {
        return CS.digits.contains(s)
    }
    
    var isVowel: Bool {
        return CS.engVowels.contains(s)
    }
    
    var isConsonant: Bool {
        return CS.engConsonants.contains(s)
    }
    
    //    var isLetter: Bool {
    //        return Eng.letters.contains(self)
    //    }
    
    var isEngLetterLowercased: Bool {
        return CS.engLettersLowercased.contains(s)
    }
    var isEngLetterUppercased: Bool {
        return CS.engLettersUppercased.contains(s)
    }
    /// any case
    var isEngLetter: Bool {
        return CS.engLetters.contains(s)
    }
    
    var isEngAlphanumericLowercased: Bool {
        return CS.engAlphanumericsLowercased.contains(s)
    }
    var isEngAlphanumericUppercased: Bool {
        return CS.engAlphanumericsUppercased.contains(s)
    }
    /// any case
    var isEngAlphanumerics: Bool {
        return CS.engAlphanumerics.contains(s)
    }
    
    //    var isNumber: Bool {
    //        return isInt
    //    }
    //    var isLetter: Bool {
    //        return CS.letters.contains(unicodeScalar)
    //    }
    
    //move to string??
    //    var isDecimalDigit: Bool {
    //        return CS.decimalDigits.contains(unicodeScalar)
    //    }
    
    var isEmoji: Bool {
        // http://stackoverflow.com/questions/30757193/find-out-if-character-in-string-is-emoji
        return CS.emojiScalars.contains(unicodeScalar.value)
    }
    
    
    var isUppercased: Bool {
        return s == s.uppercased
    }
    
    var isLowercased: Bool {
        return s == s.lowercased
    }
    
    var isWhiteSpace: Bool {
        return s == " "
    }
    
    var lowercased: Char {
        return s.lowercased[0]
    }
    
    var uppercased: Char {
        return s.uppercased[0]
    }
    
    
    //MARK: random
    
    /// 0-9
    static var randDigit: Char {
        let a = CS.digits
        //r(CS.decimalDigits)
        return randChar(a)
    }
    static func randChar(_ chars: Str) -> Char {
        let num = Int.rand(chars.len)
        let i = chars.index(chars.startIndex, offsetBy: num)
        return chars[i]
    }
    static func randChar(_ chars: [Str]) -> Char {
        return randChar(chars.joined())
    }
    
    
    ///  any case
    static var randEngLetter: Char {
        return randChar(CS.engLetters)
    }
    /// any case
    static var randEngAlphanumeric: Char {
        return randChar(CS.engAlphanumerics)
    }
    
    static var randEngLetterLowercased: Char {
        return randChar(CS.engLettersLowercased)
    }
    static var randEngLetterUppercased: Char {
        return randChar(CS.engLettersUppercased)
    }
    
    
    /// uppercased or lowercased
    //    static var randLetter: Char {
    //        L.notImpl()
    //        //        let a = Eng.letters + Eng.letters.map{$0.uppercased}
    //        //        return randChar(a)
    //    }
    //
    //    static var randLetterLowercased: Char {
    //        L.notImpl()
    //        //        let a = Eng.letters
    //        //        return randChar(a)
    //    }
    //    static var randLetterUppercased: Char {
    //        L.notImpl()
    //        //        let a = Eng.letters.map{$0.uppercased}
    //        //        return randChar(a)
    //    }
    //
    //    static var randAlphanumeric: Char {
    //        L.notImpl()
    //        //"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    //        //        let a = Eng.letters + Eng.letters.map{$0.uppercased}
    //        //        return randChar(a)
    //    }
    
    
    
    // MARK: - Operators
    
    ///  Repeat character multiple times.
    ///        Char("-") * 10 -> "----------"
    /// - Parameters:
    ///   - lhs: character to repeat.
    ///   - rhs: number of times to repeat character.
    /// - Returns: string with character repeated n times.
    static func * (lhs: Char, rhs: Int) -> Str {
        guard rhs > 0 else {
            return ""
        }
        return Str(repeating: Str(lhs), count: rhs)
    }
    
    ///  Repeat character multiple times.
    /// 10 * Char("-") -> "----------"
    /// - Parameters:
    ///   - lhs: number of times to repeat character.
    ///   - rhs: character to repeat.
    /// - Returns: string with character repeated n times.
    static func * (lhs: Int, rhs: Char) -> Str {
        guard lhs > 0 else {
            return ""
        }
        return Str(repeating: Str(rhs), count: lhs)
    }    
}

public extension Array where Element == Char {
    var strs: [Str] {
        return map({Str($0)})
    }
}
