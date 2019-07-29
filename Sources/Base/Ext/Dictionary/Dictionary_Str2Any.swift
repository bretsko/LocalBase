
public extension Dictionary where Key: StringProtocol {
    
    // http://stackoverflow.com/questions/33180028/extend-dictionary-where-key-is-of-type-string
    // Lowercase all keys in dictionary.
    mutating func lowercaseAllKeys() {
        
        keys.forEach { key in
            if let lowercaseKey = Str(describing: key).lowercased as? Key {
                self[lowercaseKey] = removeValue(forKey: key)
            }
        }
    }
}

//
//
//public extension Dictionary where Key == Str, Value == Any {
//
//    //MARK: stripInvalids
//
//    mutating func stripInvalids() {
//
//        for (k, v) in self {
//            //            if (value as AnyObject) is NSNull || value == nil {
//            //                removeValue(forKey: key)
//            //            } else
//
//            //            if case let Optional.some(v) = value as? Optional<Any> {
//            //                if v.isNone {
//            //                    removeValue(forKey: key)
//            //                } else {
//            //                    v.onSome { t in
//            //                        let ao = (value as AnyObject)
//            //                        if ao is NSNull {
//            //                            removeValue(forKey: key)
//            //                        } else {
//            //                            updateValue(ao, forKey: key)
//            //                        }
//            //                    }
//            //                }
//            //            }
//
//            let ao = (v as AnyObject)
//            if ao is NSNull {
//                removeValue(forKey: k)
//            } else {
//                updateValue(ao, forKey: k)
//            }
//
//            guard let values = v as? [Any] else {
//                continue
//            }
//            var filtered = values.filter {
//                !(($0 as AnyObject) is NSNull || $0 == nil) }
//
//            for (i, unit) in filtered.enumerated() {
//                guard var nestedDict = unit as? [Str: Any] else {
//                    continue
//                }
//                nestedDict.stripInvalids()
//
//                if nestedDict.values.count > 0 {
//                    filtered[i] = nestedDict as Any
//                } else {
//                    filtered.remove(at: i)
//                }
//            }
//
//            if filtered.hasSth {
//                self[k] = filtered
//            } else {
//                removeValue(forKey: k)
//            }
//
//
//            guard var nestedDict = v as? [Str: Any]  else {
//                continue
//            }
//            nestedDict.stripInvalids()
//
//            if nestedDict.values.count > 0 {
//                self[k] = nestedDict as Any
//            } else {
//                removeValue(forKey: k)
//            }
//        }
//    }
//
//    var strippingInvalids: Dictionary<Str, Any> {
//        var a = self
//        a.stripInvalids()
//        return a
//    }
//}



