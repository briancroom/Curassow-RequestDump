import PackageDescription

let package = Package(
  name: "RequestDump",
  dependencies: [
    .Package(url: "https://github.com/briancroom/Curassow.git", majorVersion: 0, minor: 1),
  ]
)
