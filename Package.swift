// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftDate",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .watchOS(.v2), .tvOS(.v9)
    ],
    products: [
      .library(name: "SwiftDate", targets: ["SwiftDate"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftDate",
            dependencies: [],
			resources: [
				.process("Formatters/RelativeFormatter/langs")
			]),
        .testTarget(
            name: "SwiftDateTests",
            dependencies: ["SwiftDate"])
    ]
)
