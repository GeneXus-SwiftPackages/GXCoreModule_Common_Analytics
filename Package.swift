// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Analytics",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Analytics",
			targets: ["GXCoreModule_Common_AnalyticsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.5.0-beta.4")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_Analytics-1.5.0-beta.4.xcframework.zip",
			checksum: "dca0a185efa931a6395a011967edc06846db4a12ffa86fedec99e5317c61c2de"
		)
	]
)