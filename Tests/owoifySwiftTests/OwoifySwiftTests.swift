import XCTest
@testable import OwoifySwift

final class OwoifySwiftTests: XCTestCase {
    let source = "Hello World! This is the string to owo! Kinda cute, isn't it?"

    func testOwoify() {
        XCTAssertNotEqual(owoify(source: source), source)
    }

    func testOwo() {
        XCTAssertNotNil(owoify(source: source))
        XCTAssertNotEqual(owoify(source: source), "")
    }

    func testUwu() {
        XCTAssertNotNil(owoify(source: source, level: OwoifyLevel.Uwu))
        XCTAssertNotEqual(owoify(source: source, level: OwoifyLevel.Uwu), "")
    }

    func testUvu() {
        XCTAssertNotNil(owoify(source: source, level: OwoifyLevel.Uvu))
        XCTAssertNotEqual(owoify(source: source, level: OwoifyLevel.Uvu), "")
    }

    func testOwoNotEqualToUwu() {
        XCTAssertNotEqual(owoify(source: source), owoify(source: source, level: OwoifyLevel.Uwu))
    }

    func testOwoNotEqualToUvu() {
        XCTAssertNotEqual(owoify(source: source), owoify(source: source, level: OwoifyLevel.Uvu))
    }

    func testUwuNotEqualToUvu() {
        XCTAssertNotEqual(owoify(source: source, level: OwoifyLevel.Uwu), owoify(source: source, level: OwoifyLevel.Uvu))
    }

    static var allTests = [
        ("testOwoify", testOwoify),
        ("testOwo", testOwo),
        ("testUwu", testUwu),
        ("testUvu", testUvu),
        ("testOwoNotEqualToUwu", testOwoNotEqualToUwu),
        ("testOwoNotEqualToUvu", testOwoNotEqualToUvu),
        ("testUwuNotEqualToUvu", testUwuNotEqualToUvu),
    ]
}
