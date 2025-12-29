// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Analytics",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Analytics",
			targets: ["GXCoreModule_Common_AnalyticsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.1.0-beta.16")
	],
	targets: [
		.target(name: "GXCoreModule_Common_AnalyticsWrapper",
				dependencies: [
					"GXCoreModule_Common_Analytics",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_Analytics",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_Analytics-4.1.0-beta.16.xcframework.zip",
			checksum: "fe8747b98be8120a8935f7ac2fc3761546808da155770dd8528b0c16fb41fc58"
		)
	]
)