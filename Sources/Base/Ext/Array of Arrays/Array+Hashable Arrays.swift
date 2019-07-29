

// Array of Sets<Element> OR [Element]
public extension Array where Element: Collection, Element.Element: Hashable { //, Element.Index == Int
    
    typealias SetType = Set<Element.Element>
    
    var sets: [SetType] {
        return map{$0.set}
    }
    
    var setUnion: SetType {
        return sets.reduce(SetType(), { $0.union($1) })
    }
}
