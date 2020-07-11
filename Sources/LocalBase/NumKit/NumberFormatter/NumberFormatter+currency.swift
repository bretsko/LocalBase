

public extension NumberFormatter {
    
    /// Returns full currency name in given locale
    /// For example, in the "en" locale, the result for `"USD"` is `"US Dollar"`.
    static func currencyName(currencyCode: Str,
                             currencySymbol: Str,
                             plurality: CurrencyPlurality = .singular,
                             _ lid: LID) -> Str {
        
        let str = lid.transl(currencyCode: currencyCode)!
        
        switch plurality {
        case .singular: // 1 доллар
            return str
        case .twoThreeFour: // 2,3,4 доллара
            
            //TODO:
            //            let localeID1 = getLocaleForCurrency(code:currencyCode,
            //                                         symbol: currencySymbol)
            //            if localeID1 == lid {
            //                return numFormatter_currencyWords(from: 2,
            //                                     currencyCode: currencyCode,
            //                                     currencySymbol: currencySymbol,
            //                                     lid)
            //            }
            return makePluralCurrency(str, lid)
            
        case .plural: // 6 долларов
            
            //TODO:
            //            let localeID1 = getLocaleForCurrency(code:currencyCode,
            //                                                 symbol: currencySymbol)
            //            if localeID1 == lid {
            //                return numFormatter_currencyWords(from: 6,
            //                                     currencyCode: currencyCode,
            //                                     currencySymbol: currencySymbol,
            //                                     lid)
            //            }
            return makePluralCurrency(str, lid)
        }
    }
}

//MARK: - private

private extension NumberFormatter {
    
    static func makePluralCurrency(_ currencyStr: Str,
                                   _ lid: LID) -> Str {
        
        //TODO: use morphological rules
        if lid == .englishUS {
            return plural_English(currencyStr)
        }
        return currencyStr
    }
    
    static func plural_English(_ currencyStr: Str) -> Str {
        let processed = currencyStr.lowercased()
        
        // https://www.ef.com/wwen/english-resources/english-grammar/singular-and-plural-nouns/
        // https://7esl.com/regular-plural-nouns/
        // https://www.usinggrammar.com/english-grammar/countable-nouns.php
        
        
        //case 1: A singular noun ending in s, x, z, ch, sh makes the plural by adding -es.
        
        if ["s", "x", "z", "ch"].contains(where: {
            processed.hasSuffix($0)
        }) {
            return currencyStr + "es"
        }
        
        // consonant + y -> ies A singular noun ending in a consonant and then y makes the plural by dropping the y and adding -ies.
        if processed.hasSuffix("y"),
           processed.count > 2, // sky
           processed[processed.count - 2].isConsonant {
            
            return currencyStr.removingLast! + "ies"
        }
        return currencyStr + "s"
    }
    
    
    //TODO: either capitalize dollar, or make lowercase in currency.name()
    /// extracts only the currency part
    /// For ex "US dollars", "euros", etc
    static func numFormatter_currencyWords(from num: Double,
                                           currencyCode: Str,
                                           currencySymbol: Str,
                                           _ lid: LID) -> Str {
        
        let fmtr = shared(numStyle: .currencyPlural, lid)
        fmtr.currencySymbol = currencySymbol
        fmtr.currencyCode = currencyCode
        
        //BUG
        //        if num > 1 {
        //            // locale is used as currency
        //            print(lid.s)
        //            print(fmtr.currencyCode!)
        //            print(fmtr.currencySymbol!)
        //            //ru_UA
        //            //Optional("USD")
        //            //Optional("US$")
        //            // 6,00 украинской гривны"
        //        }
        
        return fmtr.str(from: num).wordsExceptFirst!
    }
    
    //??
    //    static func getLocaleForCurrency(code: Str,
    //                                     symbol: Str) -> LID {
    //        fatalError()
    //    }
}

