


extension Double  {} //: HasAllHStatesT
public extension Double {
    
    //    static func allStates() -> [Double] {
    //        L.notImpl()
    //    }
      
    /// step can be negative
    static func gen(min: Double,
                    max: Double,
                    step: Double = 0.1) -> [Double]? {
        crashIf(step == 0.0)
        if step < 0 {
            return stride(from: min, to: max - 1, by: step).map{$0.d}.sth
        } else {
            return stride(from: min, to: max + 1, by: step).map{$0.d}.sth
        }
    }
    
    
    //MARK: genArrays
    
    /// generates sequences with different combinations and permutations
    /// step can be negative
    /// if permutate is true will make all possible combinations with given numbers and array length
    static func genArrays(minNum: Double,
                          maxNum: Double,
                          minArrayLength: Int,
                          maxArrayLength: Int,
                          permutate: Bool = true,
                          step: Double = 0.1) -> [ [Double] ]? {
        crashIf(minArrayLength < 0 || maxArrayLength < 1 || minArrayLength > maxArrayLength)
        crashIf(step == 0.0 || minNum > maxNum)

        var r = [ [Double] ]()
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
//        return r
    }
}


