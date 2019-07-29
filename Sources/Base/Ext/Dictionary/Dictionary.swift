
import Foundation


public extension Dictionary {
    typealias K = Key
    typealias V = Value
    
    /// SwifterSwift: Check if key exists in dictionary.
    ///
    ///        let dict: [String : Any] = ["testKey": "testValue", "testArrayKey": [1, 2, 3, 4, 5]]
    ///        dict.has(key: "testKey") -> true
    ///        dict.has(key: "anotherKey") -> false
    ///
    /// - Parameter key: key to search for
    /// - Returns: true if key exists in dictionary.
    func has(key: K) -> Bool {
        return index(forKey: key) != nil
    }
    
    /// SwifterSwift: Remove all keys contained in the keys parameter from the dictionary.
    ///
    ///        var dict : [String : String] = ["key1" : "value1", "key2" : "value2", "key3" : "value3"]
    ///        dict.removeAll(keys: ["key1", "key2"])
    ///        dict.keys.contains("key3") -> true
    ///        dict.keys.contains("key1") -> false
    ///        dict.keys.contains("key2") -> false
    ///
    /// - Parameter keys: keys to be removed
    mutating func removeAll<S: Sequence>(keys: S) where S.Element == K {
        keys.forEach { removeValue(forKey: $0) }
    }
    
    /// SwifterSwift: Remove a value for a random key from the dictionary.
    @discardableResult
    mutating func removeValueForRandomKey() -> V? {
        guard let randomKey = keys.randomElement() else {
            return nil
        }
        return removeValue(forKey: randomKey)
    }
    
    
    /// SwifterSwift: Returns a dictionary containing the results of mapping the given closure over the sequence’s units.
    /// - Parameter transform: A mapping closure. `transform` accepts an unit of this sequence as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: A dictionary containing the transformed units of this sequence.
    func mapKeysAndValues<KType, VType>(_ transform: ((key: K, value: V)) throws -> (KType, VType)) rethrows -> [KType: VType] {
        return [KType: VType](uniqueKeysWithValues: try map(transform))
    }
    
    /// SwifterSwift: Returns a dictionary containing the non-`nil` results of calling the given transformation with each unit of this sequence.
    /// - Parameter transform: A closure that accepts an unit of this sequence as its argument and returns an optional value.
    /// - Returns: A dictionary of the non-`nil` results of calling `transform` with each unit of the sequence.
    /// - Complexity: *O(m + n)*, where _m_ is the length of this sequence and _n_ is the length of the r.
    func compactMapKeysAndValues<KType, VType>(_ transform: ((key: K, value: V)) throws -> (KType, VType)?) rethrows -> [KType: VType] {
        return [KType: VType](uniqueKeysWithValues: try compactMap(transform))
    }
    
    
    //MARK: -
    
    mutating func set<KType, VType>(value:VType, for keys: [KType]) {
        keys.forEach { key in
            // self[value] = key
            updateValue(value as! V, forKey: key as! K)
        }
    }
    
    /// Merges the dictionary with dictionaries passed.
    /// The latter dictionaries will override values of the keys that are already set
    /// :param dictionaries A comma separated list of dictionaries, minimum one
    mutating func merge<KType, VType>(_ dicts: Dictionary<KType, VType>...) {
        dicts.forEach { dict in
            dict.forEach { k, v in
                updateValue(v as! V, forKey: k as! K)
            }
        }
    }
    
       
    
    
    ///  Count dictionary entries that where function returns true.
    /// - Parameter where: condition to evaluate each tuple entry against.
    /// - Returns: Count of entries that matches the where clousure.
    func count(where condition: @escaping ((key: K, value: V))  -> Bool)  -> Int {
        var len = 0
         forEach {
            if condition($0) {
                len += 1
            }
        }
        return len
    }
    
    /**
     Add dictionary to self in-place.
     
     - parameter dictionary: The dictionary to add to self
     */
    mutating func formUnion(_ dict: Dictionary) {
        dict.forEach {
            updateValue($0.1, forKey: $0.0)
        }
    }
    
    /**
     Return a dictionary containing the union of two dictionaries
     
     - parameter dictionary: The dictionary to add
     - returns: The combination of self and dictionary
     */
    func union(_ dict: Dictionary) -> Dictionary {
        var a = self
        a.formUnion(dict)
        return a
    }
    
    /**
     Difference of self and the input dictionaries.
     Two dictionaries are considered equal if they contain the same [key: value] pairs.
     
     :param: dictionaries Dictionaries to subtract
     :returns: Difference of self and the input dictionaries
     */
    func difference<VType: Equatable>(dicts: [K: VType]...) -> [K: VType] {
        var r = [K: VType]()
        
        forEach {
            if let item = $1 as? VType {
                r[$0] = item
            }
        }
        
        //  Difference
        dicts.forEach { dict in
            dict.forEach { k, v in
                if r.has(key: k) && r[k] == v {
                    r.removeValue(forKey: k)
                }
            }
        }
        
        return r
    }

    
    //MARK: JSON
    
    typealias JS = JSONSerialization
    
    /// SwifterSwift: JSON Data from dictionary.
    ///
    /// - Parameter prettify: set true to prettify data (default is false).
    /// - Returns: optional JSON Data (if applicable).
    func jsonData(prettify: Bool = false) -> Data? {
        guard JS.isValidJSONObject(self) else {
            return nil
        }
        let options = (prettify == true) ? JS.WritingOptions.prettyPrinted : JS.WritingOptions()
        return try? JS.data(withJSONObject: self, options: options)
    }
    
    
    /// SwifterSwift: JSON String from dictionary.
    ///
    ///        dict.jsonString() -> "{"testKey":"testValue","testArrayKey":[1,2,3,4,5]}"
    ///
    ///        dict.jsonString(prettify: true)
    ///        /*
    ///        returns the following string:
    ///
    ///        "{
    ///        "testKey" : "testValue",
    ///        "testArrayKey" : [
    ///            1,
    ///            2,
    ///            3,
    ///            4,
    ///            5
    ///        ]
    ///        }"
    ///
    ///        */
    ///
    /// - Parameter prettify: set true to prettify string (default is false).
    /// - Returns: optional JSON String (if applicable).
    func jsonString(prettify: Bool = false) -> String? {
        guard JS.isValidJSONObject(self) else {
            return nil
        }
        let options = (prettify == true) ? JS.WritingOptions.prettyPrinted : JS.WritingOptions()
        
        guard let jsonData = try? JS.data(withJSONObject: self, options: options) else {
            return nil
        }
        return String(data: jsonData, encoding: .utf8)
    }
    
}

// MARK: - Methods (V: Equatable)
public extension Dictionary where V: Equatable {
    
    /// SwifterSwift: Returns an array of all keys that have the given value in dictionary.
    ///
    ///        let dict = ["key1": "value1", "key2": "value1", "key3": "value2"]
    ///        dict.keys(forValue: "value1") -> ["key1", "key2"]
    ///        dict.keys(forValue: "value2") -> ["key3"]
    ///        dict.keys(forValue: "value3") -> []
    ///
    /// - Parameter value: V for which keys are to be fetched.
    /// - Returns: An array containing keys that have the given value.
    func keys(forValue value: V) -> [K] {
        return keys.filter { self[$0] == value }
    }
}
