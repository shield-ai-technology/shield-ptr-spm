// swift-tools-version:5.5
import PackageDescription

let version = "1-5-58"
let checksum = "7286d506df4783e7caaa0bd144d75cbf5e4446af3fc31a4afb3555e40cfca7a5"

let package = Package(
    name: "shield-ptr-spm",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ShieldPtr",
            targets: ["ShieldPtr"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShieldPtr",
            url: "https://s3.amazonaws.com/cashshield-sdk/shield-ptr-ios-swift-\(version).zip",
            checksum: checksum
        )
    ]
)
