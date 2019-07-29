

extension Bool: HasAllHStatesT, HasSELF {}
public extension Bool {
    typealias SELF = Bool
    
    static func allStates() -> [Bool] {
        return [true, false]
    }
    
    //MARK: genArrays
    
    /// if permutate is false - will simply make arrays with true, false, true, false, etc
    /// if permutate is true will make all possible combinations with given numbers and array length
    /// generates sequences with different combinations and permutations
    static func genArrays(startWith value: Bool,
                          minArrayLength: Int,
                          maxArrayLength: Int,
                          permutate: Bool = true) -> [ [Int] ]? {
        L.notImpl()
        //return stride(from: min, to: max, by: step).map{$0.i}.sth
    }
}

