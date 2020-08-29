import XCTest
@testable import OwoifySwift

final class owoifySwiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertNotNil(owoify(source: "This is the string to owo! Kinda cute, isn't it?"))
        XCTAssertNotNil(owoify(source: "This is the string to owo! Kinda cute, isn't it?", level: OwoifyLevel.Uvu))
        print(owoify(source: "This is the string to owo! Kinda cute, isn't it?"))
        print(owoify(source: "This is the string to owo! Kinda cute, isn't it?", level: OwoifyLevel.Uvu))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
