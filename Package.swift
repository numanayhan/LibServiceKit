// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibServiceKit",
    platforms: [
        .macOS(.v13), .iOS(.v13),
    ],
    products: [
        .library(
            name: "LibServiceKit",
            targets: ["LibServiceKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.4.3"),
    ],
    targets: [
        .systemLibrary(name: "SignalFfi"),
        .target(
            name: "LibServiceKit",
            dependencies: ["SignalFfi"],
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
        )
    ]
)
