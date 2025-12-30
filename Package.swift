// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToastKit",
    platforms: [
        .iOS(.v13),      // SwiftUI requires iOS 13+
        .macOS(.v10_15), // SwiftUI requires macOS 10.15+
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "ToastKit",
            targets: ["ToastKit"]
        )
    ],
    targets: [
        .target(
            name: "ToastKit"
        )
    ]
)
