// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BinanceAPI",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "BinanceAPI", targets: ["BinanceAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.4.2")
    ],
    targets: [
        .target(
            name: "BinanceAPI",
            dependencies: ["CryptoSwift"]),
        .testTarget(
            name: "BinanceAPITests",
            dependencies: ["BinanceAPI"]
        )
    ]
)
