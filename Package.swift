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
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "BareBonesBrowserKit",
            url: "https://github.com/swift-precompiled/BareBonesBrowser/releases/download/0.1.0/BareBonesBrowserKit-a668eb7762700227ee525a8a50c533b13f8ba317f5bb1df3c80acf3aeddb6244.xcframework.zip",
            checksum: "a668eb7762700227ee525a8a50c533b13f8ba317f5bb1df3c80acf3aeddb6244"
        )
    ]
)