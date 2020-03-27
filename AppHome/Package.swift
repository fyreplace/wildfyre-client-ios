// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "AppHome",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "AppHome",
            targets: ["AppHome"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AppHome",
            dependencies: []
        ),
    ]
)
