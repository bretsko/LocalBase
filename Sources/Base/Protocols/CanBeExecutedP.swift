

import Foundation


public protocol CanBeExecutedP {
    var isExecuted: Bool {get}
}

public extension Array where Element: CanBeExecutedP {
    var isExecuted: Bool {
        return allSatisfy{$0.isExecuted}
    }
}
public extension Array where Element == CanBeExecutedP {
    var isExecuted: Bool {
        return allSatisfy{$0.isExecuted}
    }
}
public extension Set where Element: CanBeExecutedP {
    var isExecuted: Bool {
        return allSatisfy{$0.isExecuted}
    }
}








