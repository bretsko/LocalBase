

import Foundation


public protocol Copyable {
    var copy: Self {get}
}


//public protocol CustomCopyable {
//    var copy: Self {get}
//}

/// This is just a reference protocol used by DeepCopyable to signify a protocol type used for copying
public protocol CopyRefP {
    //var copy: Self {get}
}

// structs are copyable by default
public protocol DeepCopyable: class, CopyRefP {
    init(deepCopyFrom: CopyRefP)
    var copy: CopyRefP {get}
}






