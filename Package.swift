// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "DataStructureFramework",
	platforms: [.iOS(.v12)],
	products: [
		.library(
			name: "DataStructureFramework",
			targets: ["DataStructureFramework", "DataStructureFrameworkTests"]),
	],
	dependencies: [],
	targets: [
		.target(
			name: "DataStructureFramework",
			path: "DataStructureFramework/Sources"
		),
		.testTarget(
			name: "DataStructureFrameworkTests",
			dependencies: ["DataStructureFramework"],
			path: "DataStructureFrameworkTests/Sources"
		),
	]
)
