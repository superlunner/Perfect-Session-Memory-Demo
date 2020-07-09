// swift-tools-version:4.2

import PackageDescription

let package = Package(
	name: "PerfectSessionMemory",
	products: [
		.executable(name: "PerfectSessionMemory", targets: ["PerfectSessionMemory"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-Session.git", from: "3.0.0"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-RequestLogger.git", from: "3.0.0")
	],
	targets: [
		.target(name: "PerfectSessionMemory", dependencies: ["PerfectHTTPServer", "PerfectSession", "PerfectRequestLogger"])
	]
)
