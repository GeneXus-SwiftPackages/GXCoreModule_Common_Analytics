// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Analytics",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Analytics",
			targets: ["GXCoreModule_Common_AnalyticsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta")
	],
	targets: [
		.target(name: "GXCoreModule_Common_AnalyticsWrapper",
				dependencies: [
					"GXCoreModule_Common_Analytics",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_Analytics",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_Analytics-1.0.0-beta+20230324150340.xcframework.zip",
			checksum: "1d1a81b6ea262b3cf55243d1ac422ce9ee8fbc07814776d4b18ef307d561579a"
		)
	]
)