// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Base",
    
    platforms: [
        .macOS(.v10_12), .iOS(.v11), .tvOS(.v10), .watchOS(.v4)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Base",
            targets: ["Base"]),
    ],
    dependencies: [

        // .package(url: "../Log Github", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/bretsko/Logger", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Base",
            dependencies: ["Log"]), 
        // .testTarget(
        //     name: "BaseTests",
        //     dependencies: ["Base"]),
    ]
)
