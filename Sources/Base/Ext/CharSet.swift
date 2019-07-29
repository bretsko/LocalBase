
import Foundation


public extension CS {
    
    static let digits = "0123456789"
    
    static let engVowels = "aeiouy"
    static let engConsonants = "bcdfghjklmnpqrstvwxz"
    
    static let engLettersLowercased = "abcdefghijklmnopqrstuvwxyz"
    static let engLettersUppercased = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    /// both cases
    static let engLetters = engLettersLowercased + engLettersUppercased
    
    static let engAlphanumericsLowercased = engLettersLowercased + digits
    static let engAlphanumericsUppercased = engLettersUppercased + digits
    static let engAlphanumerics = engLettersLowercased + engLettersUppercased + digits
    
    
    //MARK -
    
    static var emojiScalars: [UInt32] {
        // http://stackoverflow.com/questions/30757193/find-out-if-character-in-string-is-emoji
        
        struct SymbolScalars {
            
            /// Special Characters
            static let a: [UInt32] = [0x3030, 0x00AE, 0x00A9]
            
            /// Emoticons
            static let b = Array<UInt32>(0x1D000 ... 0x1F77F)
            
            /// Misc symbols and Dingbats
            static let c = Array<UInt32>(0x2100 ... 0x27BF)
            
            /// Variation Selectors
            static let d = Array<UInt32>(0xFE00 ... 0xFE0F)
            
            /// Supplemental Symbols and Pictographs
            static let e = Array<UInt32>(0x1F900 ... 0x1F9FF)
            
            static var all: [UInt32] {
                return a + b + c + d + e
            }
        }
        return SymbolScalars.all
    }
    
    
    func isSubset(of chars: Str) -> Bool {
        return isSubset(of: CS(charactersIn: chars))
    }
    
    func isSuperset(of chars: Str) -> Bool {
        return isSuperset(of: CS(charactersIn: chars))
        
        //        #if os(Linux)
        //            // workaround for https://bugs.swift.org/browse/SR-3485
        //            let chars = Set(string.characters)
        //            for char in chars where !contains(char.unicodeScalar) {
        //                return false
        //            }
        //
        //            return true
        //        #else
        // #endif
    }
    
    // static var digits = UnicodeScalar("0")..."9"
    
    /// if any
    var allChars: [Char]? {
        var r = [Char]()
        for plane: UInt8 in 0...16 where hasMember(inPlane: plane) {
            for unicode in UInt32(plane) << 16 ..< UInt32(plane + 1) << 16 {
                if let uniChar = UnicodeScalar(unicode),
                    contains(uniChar) {
                    r.append(Char(uniChar))
                }
            }
        }
        return r.sth
    }
}
