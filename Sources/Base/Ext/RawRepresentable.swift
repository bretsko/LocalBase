
import Foundation

public extension RawRepresentable where Self: Hashable {

    /// Returns an unordered collection of `RawRepresentable` conforming to `Hashable` cases or options.
    static var all: Set<Self> {
        return Set(iterate())
    }
    
    fileprivate static func iterate() -> AnyIterator<Self> {
        var i = 0
        return AnyIterator {
            let next = withUnsafePointer(to: &i) {
                $0.withMemoryRebound(to: Self.self, capacity: 1) { $0.pointee }
            }
            
            if next.hashValue != i { return nil }
            i += 1
            
            return next
        }
    }
}

public extension RawRepresentable where Self: Hashable, RawValue: Comparable {
    /// Returns an ascendingly ordered collection of `RawRepresentable` conforming to `Hashable` cases or options where `RawValue` conforms to `Comparable`.
    static var all: [Self] {
        return Array(iterate()).sorted { $0.rawValue < $1.rawValue }
    }
}
