// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "TreeSitterMarkdown",
  platforms: [.macOS(.v10_13), .iOS(.v11)],
  products: [.library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"])],
  targets: [
    .target(
      name: "TreeSitterMarkdown",
      path: ".",
      exclude: [
        "bindings",
        "corpus",
        "docs",
        "gfm-spec",
        "scripts",
        "tree-sitter",
      ],
      sources: [
        "src/parser.c",
        "src/scanner.cc",
      ],
      publicHeadersPath: "bindings/swift",
      cSettings: [.headerSearchPath("src")]
    ),
  ]
)