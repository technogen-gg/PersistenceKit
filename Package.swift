// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PersistenceKit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .executable(
            name: "PersistenceKitSample1",
            targets: ["PersistenceKitSample1"]
        ),
        .library(
            name: "PersistenceKit",
            targets: ["PersistenceKit"]
        ),
    ],
    dependencies: [
        .package(
            url: "git@github.com:realm/realm-cocoa.git",
            .upToNextMajor(from: Version(4, 1, 1))
        )
    ],
    targets: [
        .target(
            name: "PersistenceKitSample1",
            dependencies: [
                "PersistenceKit"
            ]
        ),
        .target(
            name: "PersistenceKit",
            dependencies: [
                "Realm"
            ]
        ),
        .testTarget(
            name: "PersistenceKit.Test",
            dependencies: ["PersistenceKit"]
        ),
    ]
)
