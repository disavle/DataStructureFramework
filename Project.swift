import ProjectDescription

let DSFTarget = Target(
	name: "DataStructureFramework",
	platform: .iOS,
	product: .framework,
	bundleId: "DSAVELEV.DataStructureFramework",
	deploymentTarget: .iOS(targetVersion: "12.1", devices: .iphone),
	sources: "DataStructureFramework/**"
)

let DSFTTarget = Target(
	name: "DataStructureFrameworkTests",
	platform: .iOS,
	product: .unitTests,
	bundleId: "DSAVELEV.DataStructureFrameworkTests",
	deploymentTarget: .iOS(targetVersion: "12.1", devices: .iphone),
	sources: "DataStructureFrameworkTests/Sources/**",
	dependencies: [
		.target(name: "DataStructureFramework"),
	]
)

let project = Project(
	name: "DataStructureFramework",
	targets: [DSFTarget, DSFTTarget],
	schemes: [
		Scheme(
			name: "DataStructureFramework",
			shared: true,
			buildAction: .buildAction(targets: ["DataStructureFramework"]),
			testAction: .targets(["DataStructureFrameworkTests"]),
			runAction: .runAction(executable: "DataStructureFramework")
		),
		Scheme(
			name: "DataStructureFrameworkTests",
			shared: true,
			buildAction: .buildAction(targets: ["DataStructureFrameworkTests"]),
			testAction: .targets(["DataStructureFrameworkTests"]),
			runAction: .runAction(executable: "DataStructureFrameworkTests")
		),
	]
)
