// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToastKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ToastKit",
            targets: ["ToastKit"]
        ),
    ],
    targets: [
        .target(
            name: "ToastKit",
            path: "Sources"
        ),
        .testTarget(
            name: "ToastKitTests",
            dependencies: ["ToastKit"],
            path: "Tests"
        ),
    ]
)
