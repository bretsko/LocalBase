


//Array+HasStrP
public extension Array where Element: HasStrP {
    
    //TODO:
    
    var strs: [Str] {
        return map{$0.str}
    }
    var strsSorted: [Str] {
        return strs.sorted()
    }
    var stringSet: Set<Str> {
        return Set(strs)
    }
    var strStxUnit: Str {
        return map{$0.str}.joined(separator: " ")
    }
    
    //MARK: contain
    
    func allContain(_ str: Str) -> Bool {
        return allSatisfy{$0.str.contains(str)}
    }
    func noneContain(_ str: Str) -> Bool {
        return allSatisfy{!$0.str.contains(str)}
    }

    
    /// generates a string from the units
    /// if presort is true, sorts the array before genrating the string
    func makeString(presort: Bool = true,
                    preprocess: Bool = true,
                    separator: Str = " ") -> Str {
        let elements1: [Element]
        if presort {
            elements1 = sorted(by: {$0.str > $1.str})
        } else {
            elements1 = self
        }
        if preprocess {
            return elements1.map{
                $0.str.preprocessed }
                .joined(separator: separator)
            
        } else {
            return elements1.map{$0.str}
                .joined(separator: separator)
        }
    }
}


//Set+HasStrP
public extension Set where Element: HasStrP {
    
    var strs: [Str] {
        return array.strs
    }
    var strsSorted: [Str] {
        return array.strsSorted
    }
    var stringSet: Set<Str> {
        return array.stringSet
    }
    var strStxUnit: Str {
        return array.strStxUnit
    }
    
    //MARK: contain
    
    func allContain(_ str: Str) -> Bool {
        return array.allContain(str)
    }
    func noneContain(_ str: Str) -> Bool {
        return array.noneContain(str)
    }
    
}









