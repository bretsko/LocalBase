// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LocalBase",
    
    platforms: [
        .macOS(.v10_15), .iOS(.v14)//, .tvOS(.v10), .watchOS(.v4)
    ],
    products: [
        .library(
            name: "LocalBase",
            targets: ["LocalBase"]),
    ],
    dependencies: [
        //.package(url: "../Base", from: "1.0.0"),
        .package(url: "https://github.com/bretsko/Base", .exact("1.0.0")),
        
        
        // .package(url: "../../Quick/Quick", .exact("1.0.0")),
        // .package(url: "../../Quick/Nimble", .exact("1.0.0")),
        .package(url: "https://github.com/bretsko/Quick", from: "2.2.1"),
        .package(url: "https://github.com/bretsko/Nimble", from: "8.0.5"),
        
        // QuickObjCRuntime build fails on ios and mac
//        .package(url: "https://github.com/Quick/Quick", from: "2.2.1"),
//        .package(url: "https://github.com/Quick/Nimble", from: "8.0.0"),
    ],
    targets: [
        
        .target(
            name: "LocalBase",
            dependencies: ["Base"]),
        
        .testTarget(
            name: "LocalBaseTests",
            dependencies: [ "LocalBase", 
                            "Quick", "Nimble" ]),
    ]
)
