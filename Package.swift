// swift-tools-version:5.5
import PackageDescription

let version = "1-5-60"
let checksum = "cd3cbc2897debd2f6e680084ef16713fd2f081019d06275964a13f5d0223fd5d"

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
