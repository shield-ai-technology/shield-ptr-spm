// swift-tools-version:5.5
import PackageDescription

let version = "1-5-54"
let checksum = "7252914eab3da113e51c01b2b793d199969446e9cedba719c0d66ba5bab74b00"

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
