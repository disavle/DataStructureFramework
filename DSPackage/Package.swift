// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "DSPackage",
	platforms: [.iOS(.v12)],
	products: [
		.library(
			name: "DSPackage",
			targets: ["DSPackage", "DataStructureFramework"]),
	],
	dependencies: [],
	targets: [
		.target(
			name: "DSPackage",
			dependencies: []),
		.binaryTarget(
			name: "DataStructureFramework",
			path: "artifacts/DataStructureFramework.xcframework"
		),
		.testTarget(
			name: "DSPackageTests",
			dependencies: ["DSPackage"]
		),
	]
)
