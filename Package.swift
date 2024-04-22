// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "EffectsLibrary",
    platforms: [
        .iOS("15.2"),
        .macOS("14.3"),
        .tvOS("17.0"), // Menu is only available after tvOS 17 (and we don't have any apps we're supporting for earlier tvOS)
        .watchOS("8.0"),
        .visionOS("1.0"),
    ],
    products: [
        .library(
            name: "EffectsLibrary",
            targets: ["EffectsLibrary"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EffectsLibrary",
            dependencies: [],
            resources: [.process("Resources")])
    ]
)
