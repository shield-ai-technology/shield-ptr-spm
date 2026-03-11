// swift-tools-version:5.5
import PackageDescription

let version = "1-5-57"
let checksum = "595b5e630c5c78b0a3f740b30a0039bc3444749ae95ce5cabd9bf82f05441b31"

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
