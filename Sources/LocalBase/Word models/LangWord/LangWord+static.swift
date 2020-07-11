

public extension LangWord {
    
    
    static var allForms: Set<LangWord> {
        allWords()
    }
        
    static func allWords(lids: Set<LangLID> = LangLID.allForms,
                         _ langs: Set<LangLID> = LangLID.allForms) -> Set<LangWord> {
        lids.map { lid in
            langs.map { langLID in
                LangWord(lid, langLID)
            }
        }.flatMap{$0}.set
    }
    
    
    //TODO:
    // checks all possible values in given langs
    //    static func isLang(_ str: Str, possibleLangs: Set<LangLID>) -> Bool

}

