// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Analytics",
	platforms: [.iOS("13.0"), .watchOS("9.0"), .tvOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Analytics",
			targets: ["GXCoreModule_Common_AnalyticsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.24")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_Analytics-2.2.0-beta.24.xcframework.zip",
			checksum: "1572efb7126274bcfdf544f61cd44797d1e17c6eac0e517f04bab2392de5db9f"
		)
	]
)