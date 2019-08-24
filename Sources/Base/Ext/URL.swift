

import Foundation

public extension URL {
    
    func fileLines() -> [Str]? {
        let a = try! Str(contentsOf: self)
        return a.divided(by: "\n")
    }

    ///  Dictionary of the URL's query parameters
    var queryParameters: [Str: Str]? {
        guard let comps = URLComponents(url: self, resolvingAgainstBaseURL: false),
            let queryItems = comps.queryItems else {
                return nil }
        
        var items: [Str: Str] = [:]
        
        for queryItem in queryItems {
            items[queryItem.name] = queryItem.value
        }
        
        return items
    }

    ///  URL with appending query parameters.
    /// - Parameter parameters: parameters dictionary.
    /// - Returns: URL with appending given query parameters.
    func appendingQueryParameters(_ parameters: [Str: Str]) -> URL {
        var urlComps = URLComponents(url: self, resolvingAgainstBaseURL: true)!
        var items = urlComps.queryItems ?? []
        items += parameters.map({ URLQueryItem(name: $0, value: $1) })
        urlComps.queryItems = items
        return urlComps.url!
    }
    
    ///  Append query parameters to URL.
    /// - Parameter parameters: parameters dictionary.
    mutating func appendQueryParameters(_ parameters: [Str: Str]) {
        self = appendingQueryParameters(parameters)
    }
    
    /// Creates a URL initialized to the given string value.
    init(stringLiteral value: StringLiteralType) {
        guard let url = URL(string: value) else { fatalError("Could not create URL from: \(value)") }
        self = url
    }
    
    /// Creates a URL initialized to the given value.
    init(extendedGraphemeClusterLiteral value: StringLiteralType) {
        guard let url = URL(string: value) else {
            fatalError("Could not create URL from: \(value)") }
        self = url
    }
    
    /// Creates a URL initialized to the given value.
    init(unicodeScalarLiteral value: StringLiteralType) {
        guard let url = URL(string: value) else {
            fatalError("Could not create URL from: \(value)") }
        self = url
    }
    
    var httpsURL: URL {
        guard scheme != "https" else {
            return self
        }
        
        let str = absoluteString.replacingOccurrences(of: "http://", with: "https://")
        
        return URL(string: str)!
    }
}

public extension Data {
    
    init(filepath: Str)  {
        try! self.init(contentsOf: URL(fileURLWithPath: filepath))
    }
}

/**
 Append a path component to a url. Equivalent to `lhs.appendingPathComponent(rhs)`.
 
 - parameter lhs: The url.
 - parameter rhs: The path component to append.
 - returns: The original url with the appended path component.
 */
public func + (lhs: URL, rhs: Str) -> URL {
    return lhs.appendingPathComponent(rhs)
}

//public extension URL {
//
//    static var random: URL {
//        let urlList = ["http://www.google.com", "http://leagueoflegends.com/", "https://github.com/", "http://stackoverflow.com/", "https://medium.com/", "http://9gag.com/gag/6715049", "http://imgur.com/gallery/s9zoqs9", "https://www.youtube.com/watch?v=uelHwf8o7_U"]
//        return URL(string: urlList.randomElement()!)!
//    }
//}
