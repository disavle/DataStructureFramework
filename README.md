# DataStructureFramework
Framework for working with classic data structures 
## Installation
### Swift Package Manager
[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

> Xcode 11+ is required to build framework using Swift Package Manager.

To integrate DSFramework into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/disavle/DataStructureFramework", .upToNextMajor(from: "1.0.2"))
]
```
## Build the project
You can build the framework and run tests or something like that. Welcome!
For generating XCode project use tuist command:
```
tuist generate
```
## Used sources
1. https://github.com/kodecocodes/swift-algorithm-club
2. https://github.com/burakglobal/BinaryTree/blob/master/BinaryTree.swift

