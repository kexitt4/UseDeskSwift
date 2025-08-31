// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "UseDeskSDKSwift",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "UseDeskSDKSwift",
            targets: ["UseDeskSDKSwift"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.7.0")
    ],
    targets: [
        .target(
            name: "UseDeskSDKSwift",
            dependencies: [
                "Alamofire"
            ],
            path: "Sources/UseDeskSDKSwift",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
