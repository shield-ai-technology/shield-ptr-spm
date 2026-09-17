// swift-tools-version:5.5
import PackageDescription

let version = "1-5-61"
let checksum = "8dfdfc6002e5a1f730bd420afc51150d6bbdd140e6bd83ad6ffa1e370b077484"

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
