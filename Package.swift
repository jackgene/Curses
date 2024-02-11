// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name:  "Curses",
  products: [
    .library(name: "Curses",
             targets: ["Curses"]),
  ], 
  targets: [
    .systemLibrary(name: "ncurses", providers: [
      .apt(["ncurses"]),
      .brew(["ncurses"])
    ]),
    .target(
      name:"Curses",
      dependencies: ["ncurses"]),
  ]
)
