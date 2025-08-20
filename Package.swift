// swift-tools-version:5.5
import PackageDescription

let version = "1-5-51"
let checksum = "0a970e2e6325b6878ad3abdf3563f4eb03a01f97cd712ff79f1b81ed3201744f"

let package = Package(
    name: "shield-ptr-spm",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ShieldFraud",
            targets: ["ShieldFraud"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShieldFraud",
            url: "https://s3.amazonaws.com/cashshield-sdk/shield-ptr-ios-swift-\(version).zip",
            checksum: checksum
        )
    ]
)
