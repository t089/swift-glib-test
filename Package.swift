// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-glib-test",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swift-glib-test",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "Cglib"
            ]
        ),
        .systemLibrary(
            name: "Cglib",
            pkgConfig: "glib-2.0",
            providers: [
                .brew(["glib"]),
                .apt(["libglib2.0-dev"])
            ]
        )
    ]
)
