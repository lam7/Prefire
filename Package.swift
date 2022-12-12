// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Prefire",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Prefire",
            targets: ["Prefire"]
        ),
        .plugin(
            name: "PrefirePlaybookPlugin",
            targets: ["PrefirePlaybookPlugin"]
        ),
        .plugin(
            name: "PrefireTestsPlugin",
            targets: ["PrefireTestsPlugin"]
        )
    ],
    targets: [
        .target(
            name: "Prefire",
            dependencies: []
        ),
        .plugin(
            name: "PrefirePlaybookPlugin",
            capability: .buildTool(),
            dependencies: [
                "Sourcery"
            ]
        ),
        .plugin(
            name: "PrefireTestsPlugin",
            capability: .buildTool(),
            dependencies: [
                "Sourcery"
            ]
        ),
        .binaryTarget(
            name: "Sourcery",
            path: "Binaries/Sourcery.artifactbundle"
        )
    ]
)
