// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "AppNotifications",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "AppNotifications",
            targets: ["AppNotifications"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AppNotifications",
            dependencies: []
        ),
    ]
)
