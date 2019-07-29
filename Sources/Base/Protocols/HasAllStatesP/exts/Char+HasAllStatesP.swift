

extension Char: HasAllHStatesT, HasSELF {}
public extension Char {
    typealias SELF = Char
    
    static func allStates() -> [Char] {
        return CharSet.alphanumerics.allChars! //??
    }
    //TODO: more ?
    //    static func gen(min: Int,
    //                         max: Int) {
    //        //for i1 in 0...Int.max
    //        L.notImpl()
    //    }
}
