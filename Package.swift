// swift-tools-version:5.5
import PackageDescription

let version = "1-5-56"
let checksum = "1e80fad7b72e4c521eb343550d7c97f1f9faa4764e1dfc090b2796b80e99b646"

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
