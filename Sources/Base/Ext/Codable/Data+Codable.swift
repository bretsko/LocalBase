
import Foundation
import Log



public extension Data {
    
    @inline(__always)
    func decode<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}

public func encode<T: Encodable>(encodable: T) -> Data? {
    return try? JSONEncoder().encode(encodable)
}

public extension Encodable {
    
    
    //TODO: need optiona to say if overwrite should be done. Also check if duplicate func is already in SwiftShell
    
    /// overwrites if file already exists!
    func export(to location: Str)  {
        
        let url = URL(fileURLWithPath: location)
        guard let data = self.encode2data() else {
            //L.debug("failed to export db")
            return
        }
        
        //
        if FileManager.default.fileExists(atPath: url.path) {
            do {
                try! FileManager.default.removeItem(at: url)
            } catch let error as NSError {
                L.error("Error: \(error.domain)")
            }
        }
        
        try! data.write(to: url, options: Data.WritingOptions.atomic)
        //let fh = try! FileHandle(forReadingFrom: url)
        //fh.closeFile()
        //L.debug("Succesfully exported db")
    }
    
    
}

public extension Encodable {
    
    @inline(__always)
    func encode2data() -> Data? {
        return Base.encode(encodable: self)
    }
    
    //    @inline(__always)
    //    public func export(to location: Str)  {
    //        try! encode2data()!.export(to: location)
    //    }
}

public extension Decodable {
    
    init(filepath: Str)  {
        self = try! Data(filepath: filepath).decode()!
    }
}




