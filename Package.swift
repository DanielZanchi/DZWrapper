// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DZWrapper",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "DZWrapper",
            targets: ["DZWrapper"]),
    ],
    dependencies: [
        .package(url: "git@github.com-DZAnalytics:DanielZanchi/DZAnalytics.git", branch: "main"),
        .package(url: "git@github.com-DZUtilities:DanielZanchi/DZUtilities.git", branch: "main"),
        .package(url: "git@github.com-DZMonetization:DanielZanchi/DZMonetization.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DZWrapper",
            dependencies: [
                .product(name: "DZUtilities", package: "DZUtilities"),
                .product(name: "DZDataAnalytics", package: "DZAnalytics"),
                .product(name: "DZMonetization", package: "DZMonetization")
            ]),
        .testTarget(
            name: "DZWrapperTests",
            dependencies: ["DZWrapper"]),
    ]
)
