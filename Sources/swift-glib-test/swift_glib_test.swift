// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import Cglib

@main
struct swift_glib_test: ParsableCommand {
    mutating func run() throws {
        print("Hello, world!")
        let list = g_list_alloc()
        g_list_free(list)
    }
}
