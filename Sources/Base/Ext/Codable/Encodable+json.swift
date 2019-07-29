
import Foundation
import Log

public typealias JSON = [Str : Any]


public extension Encodable {
    
    /// only for testing
    var str: Str? {
        guard let data = encode() else {
            return nil
        }
        guard let json = data.json() else {
            return nil
        }
        return Str(describing: json)
    }
    
     /// only for testing
     func encode() -> Data? {
        guard let data = try? JSONEncoder().encode(self) else {
            L.debug("JSONEncoder failed to encode")
            return nil
        }
        return data
    }
}


public extension Data {
    
    /// only for testing
     func decode<T: Decodable>(type: T) -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
    
    /// only for testing
     func json() -> JSON? {
        guard let json = try? JSONSerialization.jsonObject(with: self, options: []) as? JSON else {
            L.debug("JSONSerialization failed to encode")
            return nil
        }
        return json
    }
}


//public extension Encodable where Self: HasDescrP {
//    var descr: Str {
//        return str()!
//    }
//}
