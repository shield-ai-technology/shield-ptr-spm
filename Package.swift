// swift-tools-version:5.5
import PackageDescription

let version = "1-5-53"
let checksum = "b0fb6d9b9472c94fca83da55b2706d5c9f27d69c4aaa39bc555257814923e266"

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
