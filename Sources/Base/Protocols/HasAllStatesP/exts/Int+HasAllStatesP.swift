

extension Int: HasAllHStatesT {}
public extension Int {
    
    static func allStates() -> [Int] {
        return Array(Int.min...Int.max)
    }
    
    /// step can be negative
    static func gen(min: Int,
                    max: Int,
                    step: Int = 1) -> [Int]? {
        crashIf(step == 0)
        if step < 0 {
           return stride(from: min, to: max - 1, by: step).map{$0.i}.sth
        } else {
           return stride(from: min, to: max + 1, by: step).map{$0.i}.sth
        }
    }
    
    
    //MARK: genArrays
    
    /// generates sequences with different combinations and permutations
    /// step can be negative
    /// if permutate is true will make all possible combinations with given numbers and array length
    static func genArrays(minNum: Int,
                          maxNum: Int,
                          minArrayLength: Int,
                          maxArrayLength: Int,
                          permutate: Bool = true,
                          step: Int = 1) -> [ [Int] ]? {
        crashIf(minArrayLength < 0 || maxArrayLength < 1 || minArrayLength > maxArrayLength)
        crashIf(step == 0 || minNum > maxNum)

        var r = [ [Int] ]()
        guard let all = gen(min: minNum, max: maxNum, step: step) else {
            return nil
        }
        r.append(all)
    
        L.notImpl()
//        for length in minArrayLength...maxArrayLength {
//
//            if permutate {
//                let a = all.suffix(length).perms(taking: length,
//                                                 withRepetition:
//                r.append(a)
//            } else {
//
//            }
//        }
        //return r
    }
}

