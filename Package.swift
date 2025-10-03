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
		.package(url: "https://github.com/ViktorChernykh/request-model", exact: "0.3.0"),
		.package(url: "https://github.com/vapor/vapor.git", from: "4.116.0"),
	],
    targets: [
        .target(name: "FinamRest", dependencies: [
			.product(name: "RequestModel", package: "request-model"),
			.product(name: "Vapor", package: "vapor"),
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
