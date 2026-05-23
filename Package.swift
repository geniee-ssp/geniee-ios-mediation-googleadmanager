// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationGoogleAdManager",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationGoogleAdManager",
            targets: ["GenieeMediationGoogleAdManagerTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.4.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationGoogleAdManagerTarget",
            dependencies: [
                "GenieeMediationGoogleAdManager",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/GenieeMediationGoogleAdManagerTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationGoogleAdManager",
            url: "https://github.com/unigeniee/geniee-ios-mediation-googleadmanager/releases/download/13.4.0/GenieeMediationGoogleAdManager.13.4.0.0.zip",
            checksum: "b58150dcbd4549dd67a03cc4c39055dcb3763c45450a279f89b93b7986cef57e"
        )
    ]
)
