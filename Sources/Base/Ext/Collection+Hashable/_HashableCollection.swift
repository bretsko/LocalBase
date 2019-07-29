

//public protocol EquatableCollection: RandomAccessCollection, Equatable {
//    associatedtype E: Hashable
//}
//
//public protocol HashableCollection: RandomAccessCollection, Hashable {
//    associatedtype E: Hashable
//}


// Array of Hashable Arrays
//public extension Array where Element: HashableCollection  { //, E.Index == Int
//    var sets: [Set<E.E>] {
//        return map{$0.set}
//    }
// 
//TODO: makeUnion
//return allReqSets.map{$0.frTypeSet}.reduce( FRTypeSet(), {
//    $0.union($1)
//})
//}
    
//public extension Array where Element == Set {}
//public extension Array where Element == Array {}
