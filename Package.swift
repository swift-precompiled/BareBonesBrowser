// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "BareBonesBrowser",
    platforms: [.macOS("11.0"), .iOS("14.0")],
    products: [
        .library(
            name: "BareBonesBrowserKit",
            targets: ["BareBonesBrowserKit_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/BareBonesBrowser/releases/download/0.1.0/BareBonesBrowserKit-218fb95f3573be8d43aa6a82d05192085e211f747998b88c4e4696c38b91ce73.xcframework.zip",
            checksum: "218fb95f3573be8d43aa6a82d05192085e211f747998b88c4e4696c38b91ce73"
        ),
        .target(
            name: "BareBonesBrowserKit_PrecompiledProduct",
            dependencies: ["BareBonesBrowserKit_Aggregation"]
        )
    ]
)