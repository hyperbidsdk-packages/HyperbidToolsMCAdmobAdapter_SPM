// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 Hyperbid. All rights reserved.

import PackageDescription

let package = Package(
    name: "HyperbidToolsMCAdmobAdapter",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HyperbidToolsMCAdmobAdapter",
            targets: ["HyperbidToolsMCAdmobAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM.git", from: "4.2.11"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.4.0")
    ],
    targets: [
        .target(
            name: "HyperbidToolsMCAdmobAdapterTarget",
            dependencies: [
                "HyperbidToolsMCAdmobAdapterBinary",
                .product(name: "HyperbidToolsMCSDK", package: "HyperbidToolsMCSDK_SPM"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/HyperbidToolsMCAdmobAdapterWrapper"
        ),
        .binaryTarget(
            name: "HyperbidToolsMCAdmobAdapterBinary",
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/MCSDK/iOS/v4.2.11/overseas/sdks/MCSDKAdmobAdapter-13.4.0.1.zip",
            checksum: "32aaaad78ccbb185d513b405fdfba62410f7eee02e2575be524f0029b6d06510"
        )
    ]
)
