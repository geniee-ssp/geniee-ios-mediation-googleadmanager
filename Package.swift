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
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-googleadmanager/releases/download/13.4.1/GenieeMediationGoogleAdManager.13.4.0.1.zip",
            checksum: "6c9d8c9ab1471d81f587fc0dba31d1bf826fa770d769897508f05a9a7fdfa145"
        )
    ]
)
