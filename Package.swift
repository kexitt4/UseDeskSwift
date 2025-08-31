// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "UseDeskSDKSwift",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UseDeskSDKSwift",
            targets: ["UseDeskSDKSwift"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift.git", from: "16.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.7.0"),
        .package(url: "https://github.com/indragiek/MarkdownKit.git", from: "1.0.0"),
        .package(url: "https://github.com/TextureGroup/Texture.git", from: "3.0.0"),
        .package(url: "https://github.com/ashleymills/Reachability.swift.git", from: "5.0.0"),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.6.0")
    ],
    targets: [
        .target(
            name: "UseDeskSDKSwift",
            dependencies: [
                .product(name: "SocketIO", package: "socket.io-client-swift"),
                "Alamofire",
                "MarkdownKit",
                "Texture",
                "Reachability",
                "SwiftSoup"
            ],
            path: "Sources/UseDeskSDKSwift",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
