//
//
//public protocol IndexedP: HasMutIdxP {
//    associatedtype IndexedType: HasDescrP & Equatable
//}
//
///// indexed Obj
//public struct IndexedG<T: HasDescrP & Equatable>: IdxHashableT, IdxCmpT {
//    
//    public var obj: T
//    public var idx: Int
//}
//public extension IndexedG {
//    typealias SELF = IndexedG
//
//    init(_ obj: T,
//         _ idx: Int) {
//        self.obj = obj
//        self.idx = idx
//    }
//    
//    var descr: Str {
//        return "\n\(idx), \(obj)"
//    }
//}
