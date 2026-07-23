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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.6.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterAdMobTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterAdMob"),
                .target(name: "AppLovinMediationGoogleAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterAdMob",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterAdMob.zip",
            checksum: "2e8e955b6b5acda991db620b922562345d272c3ee2f0e6a307425659ec5664eb"
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/google-adapter/AppLovinMediationGoogleAdapter-13.6.0.0.zip",
            checksum: "ea93ebaf490decb7dfa5976c946a47e96a38b3e2fa67cb63b0e31806ce7d2dfe"
        )
    ]
)
