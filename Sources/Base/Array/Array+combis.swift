


@_exported import Foundation
@_exported import Log


public extension Array {
    
    
    //TODO: try! to make the same func with generic param
    /// uses the checking block to filter matching combinations
    func filterCombis(num: Int = 6,
                      with checkBlock: (Array) -> Bool) -> [Array]? {
        guard num > 1,
            let sets = combiSets(num: num) else {
                L.unhandled()
        }
        
        // L.info("Combi: " + combi. )
        var r = [Array]()
        
        sets.enumerated().forEach { i, combiSet in
            
            //TODO: try improve this
            if i == 0 { // has only 1 array - self
                
                guard combiSet.hasSth,
                    let unit1 = combiSet[0].first else {
                        L.unhandled()
                        //return nil
                }
                if checkBlock([unit1]) {
                    r.append([unit1])
                }
                
            } else {
                // combiSet can be empty here
                combiSet.forEach {
                    if checkBlock($0) {
                        r.append($0)
                    }
                }
            }
        }
        return r.sth
    }
    
    private func strideCombi(_ num: Int) -> [Array]? {
        return stride(from: 0, to: len, by: num).map {
            Array(self[$0..<Swift.min($0 + num, len)])
            }.filterSth{$0.len == num}
    }
    
    private  func combiSets(num: Int) -> [ [Array] ]? {
        guard num > 1 else {
            L.unhandled()
        }
        
        var all = [[self]] // putting single array = self
        
        // starting with pairs
        for i in 2...num {
            if let a = strideCombi(i) {
                all.append(a)
            }
        }
        
        return all.sth
        //Combis(units: self, pairs: pairs, triples: triples, fours: fours, fives: fives, sixes: sixes)
    }

    //MARK: Array+Str+Combis
    
    var pairs: [(E, E)]? {
        return stride(from: 0, to: len - 1, by: 2).map {
            (self[$0], self[$0+1])}.sth
    }
    var triples: [(E, E, E)]? {
        return stride(from: 0, to: len - 1, by: 3).map {
            (self[$0], self[$0+1], self[$0+2])}.sth
    }
    
    var fours: [(E, E, E, E)]? {
        L.notImpl()
        //        return stride(from: 0, to: len - 1, by: 3).map {
        //            (self[$0], self[$0+1], self[$0+2])}.sth
    }
    var fifths: [(E, E, E, E, E)]? {
        L.notImpl()
        //        return stride(from: 0, to: len - 1, by: 3).map {
        //            (self[$0], self[$0+1], self[$0+2])}.sth
    }
    var sixs: [(E, E, E, E, E, E)]? {
        L.notImpl()
        //        return stride(from: 0, to: len - 1, by: 3).map {
        //            (self[$0], self[$0+1], self[$0+2])}.sth
    }
}


