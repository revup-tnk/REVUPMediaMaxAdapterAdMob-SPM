// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterAdMob",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterAdMob",
            targets: ["REVUPMediaMaxAdapterAdMobTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Google.git", exact: "13110000.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterAdMobTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterAdMob"),
                .product(name: "AppLovinMediationGoogleAdapter", package: "AppLovin-MAX-Swift-Package-Google"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdMob",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterAdMob.zip",
            checksum: "d26c231aaa2f3fa14438016fc9f656ca0355f4eed91f895bcb4ce699c7f74093"
        ),
    ]
)
