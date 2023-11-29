// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NutritionIASDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "NutritionIASDK",
            targets: ["NutritionIASDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/auth0/JWTDecode.swift.git", from: "2.6.0")
    ],
    targets: [
        .binaryTarget(
            name: "NutritionIASDK",
            path: "./NutritionIASDK.xcframework"),
        .target(
            name: "NutritionIASDKWrapper",
            dependencies: [
                .product(name: "JWTDecode", package: "JWTDecode.swift"),
                "NutritionIASDK"
            ],
            path: "Sources/NutritionIASDKWrapper"
        )
    ]
)
