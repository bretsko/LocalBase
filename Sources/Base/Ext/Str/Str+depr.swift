


//    func substr(from startIndex: Int, length: Int) -> Str {
//        L.notImpl()
//        //        let start = index(self.startIndex, offsetBy: startIndex)
//        //        let end = index(self.startIndex, offsetBy: startIndex + length)
//        //        return Str(self[start ..< end])
//    }

//    func position(of substr: Str) -> Int {
//        if let range = range(of: substr) {
//            return characters.distance(from: startIndex, to: range.lowerBound)
//        }
//        else {
//            return -1
//        }
//    }

//    func subString(_ startIndex: Int, length: Int) -> Str {
//
//        L.notImpl()
//        //        let start = characters.index(startIndex, offsetBy: startIndex)
//        //        let end = characters.index(startIndex, offsetBy: startIndex + length)
//        //        return Str(self[start ..< end])
//    }


//    mutating func remove(prefix: Str) {
//        let prefixStartIdx = index(startIndex, offsetBy: prefix.characters.len)
//        let range = startIndex..<prefixStartIdx
//        removeSubrange(range)
//    }



//func removing(prefix: Str) -> Str {
//    if !hasPrefix(prefix) {
//        return self
//    }
//    let prefixStartIdx = characters.index(startIndex, offsetBy: prefix.characters.len)
//    return Str(self[prefixStartIdx...])
//}
//
//func removing(suffix: Str) -> Str {
//    L.notImpl()
//    //        let position = indexOf(suffix)
//    //        if position == -1 {
//    //            return self
//    //        }
//    //        let toIdx = index(startIndex, offsetBy: position)
//    //
//    //        return Str(self[..<toIdx])
//}



// swiftlint:disable next identifier_name
///  Sliced string from a start idx with length.
///        "Hello World".slicing(from: 6, length: 5) -> "World"
/// - Parameters:
///   - i: string idx the slicing should start from.
///   - length: amount of chars to be sliced after given idx.
/// - Returns: sliced substr of length number of chars (if applicable) (example: "Hello World".slicing(from: 6, length: 5) -> "World")
//    func slicing(from i: Int, length: Int) -> Str? {
//        guard length >= 0, i >= 0, i < len else { return nil }
//        guard i.advanced(by: length) <= len else {
//            return self[safe: i ..< len]
//        }
//        guard length > 0 else { return "" }
//        return self[safe: i ..< i.advanced(by: length)]
//    }
//
//    // swiftlint:disable next identifier_name
//    ///  Slice given string from a start idx with length (if applicable).
//    ///        var str = "Hello World"
//    ///        str.slice(from: 6, length: 5)
//    ///        print(str) // prints "World"
//    /// - Parameters:
//    ///   - i: string idx the slicing should start from.
//    ///   - length: amount of chars to be sliced after given idx.
//    mutating func slice(from i: Int, length: Int) {
//        if let str = slicing(from: i, length: length) {
//            self = Str(str)
//        }
//    }
//
//    ///  Slice given string from a start idx to an end idx (if applicable).
//    ///        var str = "Hello World"
//    ///        str.slice(from: 6, to: 11)
//    ///        print(str) // prints "World"
//    /// - Parameters:
//    ///   - start: string idx the slicing should start from.
//    ///   - end: string idx the slicing should end at.
//    mutating func slice(from start: Int, to end: Int) {
//        guard end >= start else { return }
//        if let str = self[safe: start ..< end] {
//            self = str
//        }
//    }
//
//    // swiftlint:disable next identifier_name
//    ///  Slice given string from a start idx (if applicable).
//    ///        var str = "Hello World"
//    ///        str.slice(at: 6)
//    ///        print(str) // prints "World"
//    mutating func slice(at i: Int) {
//        guard i < len else { return }
//        if let str = self[safe: i ..< len] {
//            self = str
//        }
//    }


///a Str qualifies as 'blank' if it's either nil or only made up of spaces
//    static func isBlank(_ val:Str!) -> Bool {
//        if val == nil {
//            return true
//        }
//
//        return val.trim.isEmpty
//    }

// check if digits only (if empty string returns true)
//    var isDigitsOnly: Bool {
//        let digits = CS.decimalDigits
//
//        var isDigitsOnly = true
//        for char in unicodeScalars {
//            if !digits.contains(UnicodeScalar(char.value)!) {
//                // character not alpha
//                isDigitsOnly = false
//                break
//            }
//        }
//        return isDigitsOnly
//    }

//var isDigit: Bool {
//    return contains(CS.decimalDigits)
//
//    //        let scanner = Scanner(string: self)
//    //        scanner.locale = NSLocale.current
//    //        return scanner.scanDecimal(nil) && scanner.isAtEnd
//}

//    func indexOf(_ substr: Str) -> Int
//    {
//        if let range = range(of: substr) {
//            return characters.distance(from: startIndex, to: range.lowerBound)
//        }
//        else {
//            return -1
//        }
//    }


//var hasLetters: Bool {
//    return contains(CS.letters)
//    //return rangeOfCharacter(from: .letters, options: .numeric, range: nil) != nil
//}

//var hasNumbers: Bool {
//    return contains(CS.decimalDigits)
//    //return rangeOfCharacter(from: .decimalDigits, options: .literal, range: nil) != nil
//}

//var hasOnlyAlphaNumeric: Bool {
//    return containsOnly(CS.alphanumerics)
//    
//    //        let hasLetters = rangeOfCharacter(from: .letters, options: .numeric, range: nil) != nil
//    //        let hasNumbers = rangeOfCharacter(from: .decimalDigits, options: .literal, range: nil) != nil
//    //        let comps = divided(by: .alphanumerics)
//    //        return comps.joined(separator: "").isEmpty && hasLetters && hasNumbers
//}

//var containsEmoji: Bool {
//    // http://stackoverflow.com/questions/30757193/find-out-if-character-in-string-is-emoji
////    //        for scalar in unicodeScalars {
//    //            switch scalar.value {
//    //            case 0x3030, 0x00AE, 0x00A9, // Special Characters
//    //            0x1D000 ... 0x1F77F, // Emoticons
//    //            0x2100 ... 0x27BF, // Misc symbols and Dingbats
//    //            0xFE00 ... 0xFE0F, // Variation Selectors
//    //            0x1F900 ... 0x1F9FF: // Supplemental Symbols and Pictographs
//    //                return true
//    //            default:
//    //                continue
//    //            }
//    //        }
//    //        return false
//}


/// Returns a data created from the value treated as a hexadecimal string.
//    var dataFromHexadecimalString: Data? {
//        guard let regex = try? NSRegularExpression(pattern: "[0-9a-f]{1,2}", options: .caseInsensitive) else { return nil }
//
//        var data = Data(capacity: len / 2)
//        regex.enumerateMatches(in: self, options: [], range: NSRange(location: 0, length: len)) { match, _, _ in
//            guard let match = match else { return }
//            let byteString = (self as NSString).substr(with: match.range)
//            guard var num = UInt8(byteString, radix: 16) else { return }
//            data.append(&num, len: 1)
//        }
//
//        return data
//    }


/// Gets the individual chars and puts them in an array as Strings.
//    var array: [Str] {
//        return description.chars.map { Str($0) }
//    }


//    @discardableResult
//     mutating func stripFromPeriod() -> Bool {
//        guard let i = index(of: ".") else {
//            return false
//        }
//        self = Str(chars.prefix(upTo: i))
//        return true
//    }

//    @inline(__always)
//     func toIStrings() -> [IString] {
//        return lowercased.words.toIStrings()
//    }



// func str2words(_ str: Str) -> [Str]? {
//    //TODO: handle smartly non-alpha-numerics
//
//    //allowedCharacters.insert(charactersIn: "-") // "white space & hyphen"
//
//    //TODO: remove lowercased when needed
//
//    let words = str.trimmingCharacters(in: .whitespacesAndNewlines).lowercased.words
//
//    return words.isEmpty ? nil : words
//}



//    var fourCharCode:FourCharCode {
//        assert(self.characters.len == 4, "Str length must be 4")
//        var r : FourCharCode = 0
//        for char in self.utf16 {
//            r = (r << 8) + FourCharCode(char)
//        }
//        return r
//


//     func position(of substr: Str, from startIndex: Int) -> Int {
//        let startRange = self.characters.index(self.startIndex, offsetBy: startIndex)
//
//        let range = self.range(of: substr, options: CompareOptions.literal, range: ClosedRange<Str.Index>(startRange ..< self.endIndex))
//
//        if let rangeResult = range {
//            return self.characters.distance(from: self.startIndex, to: rangeResult.lowerBound)
//        } else {
//            return -1
//        }
//    }

//     func lastPosition(of substr: Str) -> Int
//    {
//        var idx = -1
//        var stepIdx = self.position(of: substr)
//
//        while stepIdx > -1 {
//            idx = stepIdx
//
//            if (stepIdx + substr.length) < self.length {
//                stepIdx = self.position(of: substr, from: (stepIdx + substr.length))
//            }
//            else {
//                stepIdx = -1
//            }
//        }
//
//        return idx
//    }

//     func indexOf(_ substr: Str, startIndex: Int) -> Int {
//        let startRange = self.characters.index(self.startIndex, offsetBy: startIndex)
//
//        let range = self.range(of: substr, options: CompareOptions.literal, range: ClosedRange<Str.Index>(startRange ..< self.endIndex))
//
//        if let rangeResult = range {
//            return self.characters.distance(from: self.startIndex, to: rangeResult.lowerBound)
//        } else {
//            return -1
//        }
//    }

//     func lastIdxOf(_ substr: Str) -> Int
//    {
//        var idx = -1
//        var stepIdx = self.indexOf(substr)
//
//        while stepIdx > -1 {
//            idx = stepIdx
//
//            if (stepIdx + substr.length) < self.length {
//                stepIdx = self.indexOf(substr, startIndex: (stepIdx + substr.length))
//            }
//            else {
//                stepIdx = -1
//            }
//        }
//
//        return idx
//    }


//     func contains(_ substr:Str) -> Bool {
//        return self.indexOf(substr) != -1
//    }




//    func maxFontSize(_ font: UIFont, boundingWidth: CGFloat, maxHeight: CGFloat) -> CGFloat {
//        let textHeight = labelHeightWithConstrainedWidth(boundingWidth, font: font) // self.height(font: font, boundingWidth: boundingWidth)
//        if textHeight < maxHeight {
//            return floor(textHeight)
//        } else {
//            let newFont = font.withSize(font.pointSize - 1)
//            return maxFontSize(newFont, boundingWidth: boundingWidth, maxHeight: maxHeight)
//        }
//    }

//    func labelHeightWithConstrainedWidth(_ width: CGFloat, font: UIFont) -> CGFloat {
//        if isEmpty {
//            return 0
//        }
//
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: 0))
//
//        label.font = font
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byWordWrapping
//        label.text = self
//
//        label.sizeToFit()
//        label.layoutIfNeeded()
//
//        return ceil(label.frame.height)
//    }
//
//    // get idx of substr in string, or -1 if not contained in other string
//    func indexOf(_ target: Str) -> Int {
//        let range = self.range(of: target)
//        if let range = range {
//            return chars.distance(from: startIndex, to: range.lowerBound)
//        } else {
//            return -1
//        }
//    }



//??
// check if letters only (if empty string returns true)
//    func isValidName() -> Bool {
//        let letters = CS.letters
//        let punctuation = CS.punctuationCharacters
//
//        var isValidName = true
//
//        for char in unicodeScalars {
//            if !letters.contains(UnicodeScalar(char.value)!), !punctuation.contains(UnicodeScalar(char.value)!) {
//                // character not alpha
//                isValidName = false
//                break
//            }
//        }
//
//        return isValidName
//    }

//    func isAlphaPunctuationWhiteSpace() -> Bool {
//        let letters = CS.letters
//        let punctuation = CS.punctuationCharacters
//        let whitespace = CS.whitespaces
//
//        var isAlphaPunctuationWhiteSpace = true
//
//        for char in unicodeScalars {
//            if !letters.contains(UnicodeScalar(char.value)!), !punctuation.contains(UnicodeScalar(char.value)!), !whitespace.contains(UnicodeScalar(char.value)!) {
//                // character not letter or whitespace
//                isAlphaPunctuationWhiteSpace = false
//                break
//            }
//        }
//
//        return isAlphaPunctuationWhiteSpace
//    }



//#if os(iOS) || os(tvOS)
/////  Check if the given string spelled correctly
//var isSpelledCorrectly: Bool {
//    let checker = UITextChecker()
//    let range = NSRange(location: 0, length: utf16.len)
//
//    let misspelledRange = checker.rangeOfMisspelledWord(in: self, range: range, startingAt: 0, wrap: false, language: Locale.preferredLanguages.first ?? "en")
//    return misspelledRange.location == NSNotFound
//}
//#endif

//    func stripHTML() -> Str? {
//        return data?.attributedString?.string
//    }


//    /// Percent escapes values to be added to a URL query as specified in RFC 3986
////    /// This percent-escapes all chars besides the alphanumeric character set and "-", ".", "_", and "~".
////    /// http://www.ietf.org/rfc/rfc3986.txt
////    /// :returns: Returns percent-escaped string.
//
//    func stringByAddingPercentEncodingForURLQueryValue() -> Str? {
//        let allowedCharacters = CS(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~")
//
//        return addingPercentEncoding(withAllowedCharacters: allowedCharacters)
//    }
//
//    // Subscript string with idx.
////    /// - Parameter i: idx.
//    subscript(i: Int) -> Str? {
//        guard i >= 0 && i < length else {
//            return nil
//        }
//        return Str(self[index(startIndex, offsetBy: i)])
//    }


// Check if string contains one or more instance of substr.
///
/// - Parameters:
///   - string: substr to search for.
///   - caseSensitive: set true for case sensitive search (default is true).
/// - Returns: true if string contains one or more instance of substr.
//    func contain(_ string: Str, caseSensitive: Bool = true) -> Bool {
//        //        if !caseSensitive {
//        //            return range(of: string, options: .caseInsensitive) != nil
//        //        }
//        //        return range(of: string) != nil
//
//        if #available(iOS 9.0, *) {
//            return caseSensitive ? localizedStandardContains(string) : localizedCaseInsensitiveContains(string)
//        }
//
//        return range(of: string, options: [.caseInsensitive, .diacriticInsensitive], locale: .current) != nil
//    }


/// Returns an array of Str with all the hashtags in self.
///
/// - Returns: Returns an array of Str with all the hashtags in self.
/// - Throws: Throws NSRegularExpression errors.
//    func hashtags() -> [Str] {
//        guard let detector = try? NSRegularExpression(pattern: "#(\\w+)", options: NSRegularExpression.Options.caseInsensitive) else {
//            return []
//        }
//
//        let hashtags = detector.matches(in: self, options: NSRegularExpression.MatchingOptions.withoutAnchoringBounds, range: NSRange(location: 0, length: len)).map { $0 }
//
//        return hashtags.map(
//            {
//                (self as NSString).substr(with: $0.range(at: 1))
//            }
//        )
//    }

/// Returns an array of Str with all the mentions in self.
///
/// - Returns: Returns an array of Str with all the mentions in self.
/// - Throws: Throws NSRegularExpression errors.
//    func mentions() -> [Str] {
//        guard let detector = try? NSRegularExpression(pattern: "@(\\w+)", options: NSRegularExpression.Options.caseInsensitive) else {
//            return []
//        }
//
//        let mentions = detector.matches(in: self, options: NSRegularExpression.MatchingOptions.withoutAnchoringBounds, range: NSRange(location: 0, length: len)).map { $0 }
//
//        return mentions.map(
//            {
//                (self as NSString).substr(with: $0.range(at: 1))
//            }
//        )
//    }

/// Returns an array of Str with all the links in self.
///
/// - Returns: Returns an array of Str with all the links in self.
/// - Throws: Throws NSDataDetector errors.
//    func links() -> [Str] {
//        guard let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue) else {
//            return []
//        }
//
//        let links = detector.matches(in: self, options: NSRegularExpression.MatchingOptions.reportCompletion, range: NSRange(location: 0, length: len)).map { $0 }
//
//        return links.filter { link in
//            link.url != nil
//            }.map { link -> Str in
//                link.url!.absoluteString
//        }
//    }

/// Returns an array of Date with all the dates in self.
///
/// - Returns: Returns an array of Date with all the date in self.
/// - Throws: Throws NSDataDetector errors.
//    func dates() -> [Date] {
//        guard let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.date.rawValue) else {
//            return []
//        }
//
//        let dates = detector.matches(in: self, options: NSRegularExpression.MatchingOptions.withTransparentBounds, range: NSRange(location: 0, length: len)).map { $0 }
//
//        return dates.filter { date in
//            date.date != nil
//            }.map { date -> Date in
//                date.date!
//        }
//    }

///  Returns a localized string, with an optional comment for translators.
///
///        "Hello world".localized -> Hallo Welt
///
//func localized(comment: Str = "") -> Str {
//    return NSLocalizedString(self, comment: comment)
//}
//#endif




///  Bool value from string (if applicable).
///
///        "1".bool -> true
///        "False".bool -> false
///        "Hello".bool = nil
///
//        var bool: Bool? {
//            let selfLowercased = trimmingCharacters(in: .whitespacesAndNewlines).lowercased
//            if selfLowercased == "true" || selfLowercased == "1" {
//                return true
//            } else if selfLowercased == "false" || selfLowercased == "0" {
//                return false
//            }
//            return nil
//        }

///  Date object from "yyyy-MM-dd" formatted string.
///
///        "2007-06-29".date -> Optional(Date)
///
//        var date: Date? {
//            let selfLowercased = trimmingCharacters(in: .whitespacesAndNewlines).lowercased
//            let formatter = DateFormatter()
//            formatter.timeZone = TimeZone.current
//            formatter.dateFormat = "yyyy-MM-dd"
//            return formatter.date(from: selfLowercased)
//        }


///  Date object from "yyyy-MM-dd HH:mm:ss" formatted string.
///
///        "2007-06-29 14:23:09".dateTime -> Optional(Date)
///
//        var dateTime: Date? {
//            let selfLowercased = trimmingCharacters(in: .whitespacesAndNewlines).lowercased
//            let formatter = DateFormatter()
//            formatter.timeZone = TimeZone.current
//            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//            return formatter.date(from: selfLowercased)
//        }

///  Integer value from string (if applicable).
///
///        "101".int -> 101
///
//    var int: Int? {
//        return Int(self)
//    }


/// Remove double or more duplicated spaces.
///
/// - returns: Remove double or more duplicated spaces.
//        func removeExtraSpaces() -> Str {
//            let squashed = replacingOccurrences(of: "[ ]+", with: " ", options: .regularExpression, range: nil)
//            #if os(Linux) // Caused by a Linux bug with emoji.
//                return squashed
//            #else
//                return squashed.trimmingCharacters(in: CS.whitespacesAndNewlines)
//            #endif
//        }
//
//        func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
//            let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
//            let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
//            return boundingBox.height
//        }
//
//        func widthWithConstrainedHeight(_ height: CGFloat, font: UIFont) -> CGFloat {
//            let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
//            let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
//
//            return ceil(boundingBox.width)
//        }
//
//        func replace(_ target: Str, withString: Str) -> Str {
//            return replacingOccurrences(of: target, with: withString, options: NSString.CompareOptions.literal, range: nil)
//        }

/**
 Replaces all occurences of the pattern on self in-place.
 
 Examples:
 
 ```
 "hello".regexInPlace("[aeiou]", "*")      // "h*ll*"
 "hello".regexInPlace("([aeiou])", "<$1>") // "h<e>ll<o>"
 ```
 */
//        mutating func formRegex(_ pattern: Str, _ replacement: Str) {
//            do {
//                let expression = try! NSRegularExpression(pattern: pattern, options: [])
//                let range = NSRange(location: 0, length: chars.len)
//                self = expression.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: replacement)
//            } catch { return }
//        }
//
//        /**
//         Returns a string containing replacements for all pattern matches.
//
//         Examples:
//
//         ```
//         "hello".regex("[aeiou]", "*")      // "h*ll*"
//         "hello".regex("([aeiou])", "<$1>") // "h<e>ll<o>"
//         ```
//         */
//        func regex(_ pattern: Str, _ replacement: Str) -> Str {
//            var replacementString = self
//            replacementString.formRegex(pattern, replacement)
//            return replacementString
//        }

/**
 Replaces pattern-matched strs, operated upon by a closure, on self in-place.
 
 - parameter pattern: The pattern to match against.
 - parameter matches: The closure in which to handle matched strs.
 
 Example:
 
 ```
 "hello".regexInPlace(".") {
 let s = $0.unicodeScalars
 let v = s[s.startIndex].value
 return "\(v) "
 }   // "104 101 108 108 111 "
 */
//        mutating func formRegex(_ pattern: Str, _ matches: (Str) -> Str) {
//            let expression: NSRegularExpression
//            do {
//                expression = try! NSRegularExpression(pattern: "(\(pattern))", options: [])
//            } catch {
//                print("regex error: \(error)")
//                return
//            }
//
//            let range = NSMakeRange(0, chars.len)
//
//            var startOffset = 0
//
//            let results = expression.matches(in: self, options: [], range: range)
//
//            for r in results {
//                var endOffset = startOffset
//
//                for i in 1 ..< r.numberOfRanges {
//                    var resultRange = r.range
//                    resultRange.location += startOffset
//
//                    let startIndex = index(self.startIndex, offsetBy: resultRange.location)
//                    let endIndex = index(self.startIndex, offsetBy: resultRange.location + resultRange.length)
//                    let replacementRange = startIndex ..< endIndex
//
//                    let match = expression.replacementString(for: r, in: self, offset: startOffset, template: "$\(i)")
//                    let replacement = matches(match)
//
//                    replaceSubrange(replacementRange, with: replacement)
//
//                    endOffset += replacement.chars.len - resultRange.length
//                }
//
//                startOffset = endOffset
//            }
//        }
//
//        /**
//         Returns a string with pattern-matched strs, operated upon by a closure.
//
//         - parameter pattern: The pattern to match against.
//         - parameter matches: The closure in which to handle matched strs.
//
//         - returns: Str containing replacements for the matched pattern.
//
//         Example:
//
//         ```
//         "hello".regex(".") {
//         let s = $0.unicodeScalars
//         let v = s[s.startIndex].value
//         return "\(v) "
//         }   // "104 101 108 108 111 "
//         */
//        func regex(_ pattern: Str, _ matches: (Str) -> Str) -> Str {
//            var replacementString = self
//            replacementString.formRegex(pattern, matches)
//            return replacementString
//        }

/// Returns if self is a valid UUID for APNS (Apple Push Notification System) or not.
///
/// - Returns: Returns if self is a valid UUID for APNS (Apple Push Notification System) or not.
//        func isUUIDForAPNS() -> Bool {
//            do {
//                let regex: NSRegularExpression = try! NSRegularExpression(pattern: "^[0-9a-f]{32}$", options: .caseInsensitive)
//                let matches: Int = regex.numberOfMatches(in: self, options: .reportCompletion, range: NSRange(location: 0, length: len))
//                return matches == 1
//            } catch {
//                return false
//            }
//        }
//
//        /// Returns if self is a valid UUID or not.
//    //        /// - Returns: Returns if self is a valid UUID or not.
//        func isUUID() -> Bool {
//            do {
//                let regex: NSRegularExpression = try! NSRegularExpression(pattern: "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", options: .caseInsensitive)
//                let matches: Int = regex.numberOfMatches(in: self, options: .reportCompletion, range: NSRange(location: 0, length: len))
//                return matches == 1
//            } catch {
//                return false
//            }
//        }

/// Returns the reversed Str.
///
/// - parameter preserveFormat: If set to true preserve the Str format.
///                             The default value is false.
///                             **Example:**
///                                 "Let's try! this function?" ->
///                                 "?noitcnuf siht yrt S'tel"
///
/// - returns: Returns the reversed Str.
//    func reversed(preserveFormat: Bool = false) -> Str {
//        guard !chars.isEmpty else {
//            return ""
//        }
//
//        var reversed = Str(removeExtraSpaces().chars.reversed())
//
//        if !preserveFormat {
//            return reversed
//        }
//
//        let words = reversed.divided(by: " ").filter { $0 != "" }
//
//        reversed.removeAll()
//        for word in words {
//            if let char = word.unicodeScalars.first {
//                if CS.uppercaseLetters.contains(char) {
//                    reversed += word.lowercased.uppercasedFirst() + " "
//                } else {
//                    reversed += word.lowercased + " "
//                }
//            } else {
//                reversed += word.lowercased + " "
//            }
//        }
//
//        return reversed
//    }


//
//    /**
//     Convert an NSRange to a Range. There is still a mismatch between the regular expression libraries
//     and NSString/Str. This makes it easier to convert between the two. Using this allows complex
//     strs (including emoji, regonial indicattors, etc.) to be manipulated without having to resort
//     to NSString instances.
//
//     Note that it may not always be possible to convert from an NSRange as they are not exactly the same.
//
//     Taken from:
//     http://stackoverflow.com/questions/25138339/nsrange-to-rangestring-idx
//
//     - parameter nsRange: The NSRange instance to covert to a Range.
//
//     - returns: The Range, if it was possible to convert. Otherwise nil.
//     */
//    func range(from nsRange: NSRange) -> Range<Str.Index>? {
//        guard
//            let from16 = utf16.idx(utf16.startIndex, offsetBy: nsRange.location, limitedBy: utf16.endIndex),
//            let to16 = utf16.idx(from16, offsetBy: nsRange.length, limitedBy: utf16.endIndex),
//            let from = Str.Index(from16, within: self),
//            let to = Str.Index(to16, within: self)
//        else { return nil }
//
//        return from ..< to
//    }
//
/// Returns the idx of the given character.
///
/// - Parameter character: The character to search.
/// - Returns: Returns the idx of the given character, -1 if not found.
//    func idx(of char: Char) -> Int {
//        let i = index(of: char)
//        if  {
//            return distance(from: startIndex, to: idx)
//        }
//        return i
//    }


/**
 
 Convenience property for a `Str`'s length
 
 */
//    var length: Int {
//        return chars.len
//    }

/**
 
 An Array of the individual substrs composing `self`. Read-only.
 
 */



/// Float value from string (if applicable).
///
/// - Parameter locale: Locale (default is Locale.current)
/// - Returns: Optional Float value from given string.
//    func float(locale: Locale = .current) -> Float? {
//        let formatter = NumberFormatter()
//        formatter.locale = locale
//        formatter.allowsFloats = true
//        return formatter.number(from: self)?.floatValue
//}
//#endif


/// Double value from string (if applicable).
///
/// - Parameter locale: Locale (default is Locale.current)
/// - Returns: Optional Double value from given string.
//func double(locale: Locale = .current) -> Double? {
//    let formatter = NumberFormatter()
//    formatter.locale = locale
//    formatter.allowsFloats = true
//    return formatter.number(from: self)?.doubleValue
//}
//#endif



///  Array of strs separated by new lines.
///
///        "Hello\ntest".lines() -> ["Hello", "test"]
///
/// - Returns: Strings separated by new lines.
//    func lines() -> [Str] {
//        var r = [Str]()
//        enumerateLines { line, _ in
//            r.append(line)
//        }
//        return r
//    }


// Double value from string (if applicable).
//    var double: Double? {
//        let formatter = NumberFormatter()
//        return formatter.number(from: self) as? Double
//    }

// Double value from string (if applicable).
//    var doubleValue: Double {
//        return NSString(string: self).doubleValue
//    }
//
//    // Float value from string (if applicable).
//    var float: Float? {
//        let formatter = NumberFormatter()
//        return formatter.number(from: self) as? Float
//    }

/// Returns the Float value
//    var floatValue: Float {
//        return NSString(string: self).floatValue
//    }

// Float32 value from string (if applicable).
//    var float32: Float32? {
//        let formatter = NumberFormatter()
//        return formatter.number(from: self) as? Float32
//    }
//
//    // Float64 value from string (if applicable).
//    var float64: Float64? {
//        let formatter = NumberFormatter()
//        return formatter.number(from: self) as? Float64
//    }
//
//    /// Returns the Int value
//    var intValue: Int {
//        return Int(NSString(string: self).intValue)
//    }


//infix operator ???: NilCoalescingPrecedence

/// Returns defaultValue if optional is nil, otherwise returns optional.
///
/// - Parameters:
///   - optional: The optional variable.
///   - defaultValue: The default value.
/// - Returns: Returns defaultValue if optional is nil, otherwise returns optional.
//func ??? <T>(optional: T?, defaultValue: @autoclosure () -> Str) -> Str {
//    return optional.map { Str(describing: $0) } ?? defaultValue()
//}

