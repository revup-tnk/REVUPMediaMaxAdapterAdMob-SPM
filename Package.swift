// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterAdMob",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterAdMob",
            targets: ["REVUPMediaMaxAdapterAdMobTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterAdMobTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterAdMob"),
                .target(name: "REVUPMediaMaxAdapterAdMobMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdMob",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterAdMob.zip",
            checksum: "87c1f57450aefde677a5fc9faa8cfb456051d4d4fe631e224839a7b1ce5676a7"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdMobMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationGoogleAdapter.xcframework.zip",
            checksum: "57c8504d1849a2737c46fb96c6103c3f2d5c145fe87c66368d63e473a58f9d93"
        ),
    ]
)
