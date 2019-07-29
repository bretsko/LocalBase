

import Foundation


public protocol ExecutableP: HasDescrP {
    var isExecutable: Bool {get}
}

public extension Array where Element: ExecutableP {
    var isExecutable: Bool {
        return allSatisfy{$0.isExecutable}
    }
}
public extension Set where Element: ExecutableP {
    var isExecutable: Bool {
        return allSatisfy{$0.isExecutable}
    }
}








