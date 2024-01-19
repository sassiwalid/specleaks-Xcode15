// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SpecLeaks",
    
    platforms: [
        .iOS(.v12)
    ],
    products: [        
        .library(name: "SpecLeaks", targets: ["SpecLeaks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "10.0.0"),
    ],
    targets: [     
        .target(
            name: "SpecLeaks",
            dependencies: ["Nimble"],
            path: "SpecLeaks/Classes/"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
