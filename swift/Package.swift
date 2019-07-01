import PackageDescription

let package = Package(
    name: "ledBlinker",
    dependencies: [
        // https://github.com/uraimo/SwiftyGPIO
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.0.0")
    ]
)
