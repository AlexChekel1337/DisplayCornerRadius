// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DisplayCornerRadius",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "DisplayCornerRadius", targets: ["DisplayCornerRadius"])
    ],
    targets: [
        .target(name: "DisplayCornerRadius", dependencies: [])
    ]
)
