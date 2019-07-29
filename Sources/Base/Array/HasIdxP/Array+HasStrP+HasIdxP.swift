


//Array+HasStrP
//public extension Array where Element: HasStrP, E: HasIdxP {
//
//    // after index, before, in range
////    func strs: [Str] {
////        return map{$0.str}
////    }
////    func strsSorted: [Str] {
////        return strs.sorted()
////    }
////    func stringSet: Set<Str> {
////        return Set(strs)
////    }
////
//
//    //MARK: contain
//
////    func allContain(_ str: Str) -> Bool {
////        return allSatisfy{$0.str.contains(str)}
////    }
////    func noneContain(_ str: Str) -> Bool {
////        return allSatisfy{!$0.str.contains(str)}
////    }
//}



//public extension Array where Element: HasStrP {
//
//    /// generates a string from the units
//    /// if presort is true, sorts the array before genrating the string
//    func makeString(presort: Bool = true,
//                    preprocess: Bool = true,
//                    separator: Str = " ") -> Str {
//
//        let elements1: [E]
//        if presort {
//            elements1 = sorted(by: {$0.str > $1.str})
//        } else {
//            elements1 = self
//        }
//
//        let elements2: [E]
//        if preprocess {
//            return elements1.map{
//                $0.str.preprocessed }
//                .joined(separator: separator)
//
//        } else {
//            return elements1.map{$0.str}
//                .joined(separator: separator)
//        }
//    }
//}





