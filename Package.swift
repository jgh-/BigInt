// swift-tools-version:5.0
//
//  Package.swift
//  BigInt
//
//  Created by Károly Lőrentey on 2016-01-12.
//  Copyright © 2016-2017 Károly Lőrentey.
//

import PackageDescription

let package = Package(
    name: "BigInt",
    products: [
        .library(name: "BigInt", targets: ["BigInt"])
    ],
    dependencies: [
        .package(url: "https://github.com/jgh-/SipHash", .revision("096c7d99dcaa4eaed47e136993262364cd5cc4f2"))
    ],
    targets: [
        .target(name: "BigInt", dependencies: ["SipHash"], path: "sources"),
        .testTarget(name: "BigIntTests", dependencies: ["BigInt"], path: "tests")
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
