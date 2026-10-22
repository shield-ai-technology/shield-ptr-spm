// swift-tools-version:5.5
import PackageDescription

let version = "1-5-62"
let checksum = "c281fd3442b5bdb3224d1bad203e26e44c82dea2d718c4f2f1e0dadb4dc72cf0"

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
