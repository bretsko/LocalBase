

@_exported import Foundation
@_exported import Rainbow
//@_exported import GraphLib
//@_exported import SwiftyTextTable
@_exported import Log

//public func initLog() {
//    L.printHeading = true
//    L.logLevel = .trace
//    L.useTerminalColors = true
//}


@inline(__always)
public func uuid() -> Str {
    return UUID().uuidString
}






