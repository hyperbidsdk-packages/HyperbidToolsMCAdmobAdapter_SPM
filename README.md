# Hyperbid - iOS Google AdMob Mediation Adapter

The HyperbidTools Google AdMob mediation adapter (`HyperbidToolsMCAdmobAdapter`) for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- Hyperbid iOS Core SDK (`HyperbidToolsMCSDK`) 4.2.11+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/hyperbidsdk-packages/HyperbidToolsMCAdmobAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `HyperbidToolsMCAdmobAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/hyperbidsdk-packages/HyperbidToolsMCAdmobAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`HyperbidToolsMCSDK`](https://github.com/hyperbidsdk-packages/HyperbidToolsMCSDK_SPM) (>= 4.2.11)
- [`GoogleMobileAds`](https://github.com/googleads/swift-package-manager-google-mobile-ads) (pinned to `13.4.0`)
