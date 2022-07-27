// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "AutoDisposable",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "AutoDisposable",targets: ["AutoDisposable"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(
            name: "AutoDisposable", dependencies: ["RxSwift", "RxCocoa", "RxRelay"]
        ),
    ]
)
