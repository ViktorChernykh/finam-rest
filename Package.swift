// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "finam-rest",
    platforms: [
        .macOS(.v13),
		.iOS(.v15)
    ],
    products: [
        .library(name: "FinamRest", targets: ["FinamRest"]),
    ],
    dependencies: [
		.package(url: "https://github.com/ViktorChernykh/request-model", from: "0.0.1"),
	],
    targets: [
        .target(name: "FinamRest", dependencies: [
			.product(name: "RequestModel", package: "request-model"),
		]),
    ]
)

/// Swift compiler settings for Release configuration.
var swiftSettings: [SwiftSetting] { [
	// Enable maximum optimizations in release
	.unsafeFlags(["-O"], .when(configuration: .release)),
	// "ExistentialAny" is an option that makes the use of the `any` keyword for existential types `required`
	.enableUpcomingFeature("ExistentialAny")
] }

/// Linker settings for stripping symbols.
var linkerSettings: [LinkerSetting] { [
	// Linker settings to strip all symbols (incl. debug info)
	.unsafeFlags(["-Xlinker", "-s"], .when(configuration: .release))
] }
