# FinamRest

One‑line elevator pitch for FinamRest: what it does, who it’s for, and why it’s useful.

- Fast summary of the core value proposition in a sentence or two.
- Optional: link to documentation site if you publish DocC pages.

Badges (optional):
[SwiftPM] [Platforms] [Swift Version] [License] [CI Status]



## Features

- Feature 1: Brief description of what it offers and the problem it solves.
- Feature 2: Another core capability, ideally user‑facing.
- Feature 3: Any opinionated defaults or unique design choices.
- Zero dependencies (if applicable).
- Fully async/await and Sendable‑safe (if applicable).



## Requirements

- Swift: 5.9+ (Xcode 15+) or specify your minimum
- Platforms (customize as needed):
  - iOS 14+
  - iPadOS 14+
  - macOS 11+
  - tvOS 14+
  - watchOS 7+
  - visionOS 1.0+ (optional)
- Tooling: Swift Package Manager (preferred). CocoaPods/Carthage if supported.



## Installation

### Swift Package Manager (SPM)

In Xcode:
- File > Add Packages…
- Enter the URL of this repository: https://github.com/ViktorChernykh/finam-rest.git
- Choose the latest version and add the product “FinamRest”.

With a Package.swift:

```swift
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YourApp",
    platforms: [
        .iOS(.v14), 
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/ViktorChernykh/finam-rest.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "YourApp",
            dependencies: [
			.product(name: "FinamRest", package: "finam-rest"),
            ]
        )
    ]
)
