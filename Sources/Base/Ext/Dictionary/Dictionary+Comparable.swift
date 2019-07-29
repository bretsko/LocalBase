
import Foundation



public extension Dictionary where Key: Comparable {
    
    var sortedKeys: [Key]? {
        return keys.sorted(by: <).sth
    }
    var sortedByKeys: [(K,V)] {
        return sorted(by: { (kv1, kv2) -> Bool in
            return kv1.key > kv2.key
        })
    }
}


public extension Dictionary where Value: Comparable {
    
    var sortedValues: [Value]? {
        return values.sorted(by: <).sth
    }
    var sortedByValues: [(K,V)] {
        return sorted(by: { (kv1, kv2) -> Bool in
            return kv1.value > kv2.value
        })
    }
    
//    var keysSortedByValues: [Key] {
//        return sorted(by: <)
//    }
//    var valuesSortedByKeys: [Value] {
//        return keys.sorted(by: <)
//    }
}

