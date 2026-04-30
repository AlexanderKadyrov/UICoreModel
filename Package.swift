// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UICoreModel",
    platforms: [
        .iOS("17")
    ],
    products: [
        .library(
            name: "UICoreModel",
            targets: ["UICoreModel"]
        )
    ],
    targets: [
        .target(
            name: "UICoreModel"
        ),
        .testTarget(
            name: "UICoreModelTests",
            dependencies: ["UICoreModel"]
        )
    ]
)
