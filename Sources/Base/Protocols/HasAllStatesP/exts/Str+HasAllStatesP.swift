


//// ??
//extension Str: HasAllHStatesT {}
//public extension Str {
//    static func allStates() -> [Str] {
//        L.notImpl()
//    }
//TODO: ?
//    static func gen(minLength: Int,
//                         maxLength: Int,
//step: Int) {
//        //for i1 in 0...Int.max
//        L.notImpl()
//    }
//}


// fuzziness score
public extension Str {
    
    /// 1 - full match, 0 - not a perfect match or empty
    func score(_ word: Str,
               fuzziness: Double? = nil) -> Double {
        
        if self == word {
            return 1
        }
        if isEmpty || word.isEmpty {
            return 0
        }
        
        var runningScore = 0.0
        var charScore = 0.0
        var finalScore = 0.0
        
        let string = self
        let lStr = string.lowercased()
        let strLength = string.count
        let lWord = word.lowercased()
        let wordLength = word.count
        
        var idxOf: Str.Index!
        var startAt = lStr.startIndex
        var fuzzies = 1.0
        var fuzzyFactor = 0.0
        var fuzzinessIsNil = true
        
        // Cache fuzzyFactor for speed increase
        if let a = fuzziness {
            fuzzyFactor = 1 - a
            fuzzinessIsNil = false
        }
        
        for i in 0 ..< wordLength {
            // Find next first case-insensitive match of word's i-th character.
            // The search in "string" begins at "startAt".
            
            if let range = lStr.range(
                of: lWord.charStrAt(i),
                options: [.caseInsensitive, .diacriticInsensitive],
                range: startAt..<lStr.endIndex,
                locale: nil ) {
                
                // start index of word's i-th character in string.
                idxOf = range.lowerBound
                
                if startAt == idxOf {
                    // Consecutive letter & start-of-string Bonus
                    charScore = 0.7
                }
                else {
                    charScore = 0.1
                    
                    // Acronym Bonus
                    // Weighing Logic: Typing the first character of an acronym is as if you
                    // preceded it with two perfect character matches.
                    if string[string.index(before: idxOf)] == " " {
                        charScore += 0.8
                    }
                }
            }
            else {
                // Char not found.
                if fuzzinessIsNil {
                    // Fuzziness is nil. Return 0.
                    return 0
                }
                else {
                    fuzzies += fuzzyFactor
                    continue
                }
            }
            
            // Same case bonus.
            if (string[idxOf] == word[word.index(word.startIndex, offsetBy: i)]) {
                charScore += 0.1
            }
            
            // Update scores and startAt position for next round of indexOf
            runningScore += charScore
            startAt = string.index(idxOf, offsetBy: 1)
        }
        
        // Reduce penalty for longer strings.
        finalScore = 0.5 * (runningScore / strLength.d + runningScore / wordLength.d) / fuzzies
        
        let char1 = lWord.charStrAt(0)
        if finalScore < 0.85 &&
            char1.compare(char1, options: .diacriticInsensitive) == .orderedSame {
            finalScore += 0.15
        }
        
        return finalScore
    }
}
private extension Str {
    
    func charAt(_ i: Int) -> Char {
        let index = self.index(self.startIndex, offsetBy: i)
        return self[index]
    }
    
    func charStrAt(_ i: Int) -> Str {
        return Str(charAt(i))
    }
}
