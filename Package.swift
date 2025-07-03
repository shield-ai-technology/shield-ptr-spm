// swift-tools-version:5.5
import PackageDescription

let version = "1-5-50"
let checksum = "a9d35093ea951d83b818715e3b9e2dae7928d1c42961c1e169d142bca57e6682"

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
