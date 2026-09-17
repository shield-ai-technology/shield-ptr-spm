// swift-tools-version:5.5
import PackageDescription

let version = "2-1-0"
let checksum = "07d124ec9fa2ae5d43f0d05620ee5fc46265f6287b3ddfc10fd09424c0dde70d"

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
