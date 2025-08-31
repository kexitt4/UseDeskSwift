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
        // если хочешь использовать общий Alamofire из Moya, убери эту строку
        // .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.7.0")
    ],
    targets: [
        .target(
            name: "UseDeskSDKSwift",
            path: "UseDesk_SDK_Swift",
            exclude: [
                "Info.plist"
            ],
            resources: [
                .process("Resources")
            ],
            dependencies: [
                // если SDK напрямую использует Alamofire — тут нужно оставить
                // "Alamofire"
            ]
        )
    ]
)
