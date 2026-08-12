// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "BareBonesBrowser",
    platforms: [.macOS("11.0"), .iOS("14.0")],
    products: [
        .library(
            name: "BareBonesBrowserKit",
            targets: ["BareBonesBrowserKit"]
        )
    ],
    targets: [
        .target(
            name: "BareBonesBrowserKit_Aggregation",
            dependencies: ["BareBonesBrowserKit"],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BareBonesBrowserKit",
            url: "https://github.com/swift-precompiled/BareBonesBrowser/releases/download/0.1.0/BareBonesBrowserKit-375c65236898e9b240530793732f2b6ae55df87a4d2fd3eea5824c5e83f4d1a4.xcframework.zip",
            checksum: "375c65236898e9b240530793732f2b6ae55df87a4d2fd3eea5824c5e83f4d1a4"
        )
    ]
)