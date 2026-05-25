// swift-tools-version:5.5
import PackageDescription

let version = "1-5-59"
let checksum = "8c97f2940bbd2eaefd9f0399a0efe10410ad7fb804fc4268dedd21cb39ac0461"

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
