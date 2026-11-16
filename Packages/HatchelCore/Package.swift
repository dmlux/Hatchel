// swift-tools-version: 6.4
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import PackageDescription

// Keep these in sync with the app target's concurrency and import settings.
internal let swiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("MemberImportVisibility"),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
    .enableUpcomingFeature("InferIsolatedConformances"),
]

internal let swiftLint: Target.PluginUsage = .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")

internal let package = Package(
    name: "HatchelCore",
    platforms: [
        .macOS(.v27)
    ],
    products: [
        .library(
            name: "HatchelCore",
            targets: ["HatchelCore"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", .upToNextMinor(from: "0.65.1"))
    ],
    targets: [
        .target(
            name: "HatchelCore",
            swiftSettings: swiftSettings,
            plugins: [swiftLint]
        ),
        .testTarget(
            name: "HatchelCoreTests",
            dependencies: ["HatchelCore"],
            swiftSettings: swiftSettings,
            plugins: [swiftLint]
        ),
    ]
)
