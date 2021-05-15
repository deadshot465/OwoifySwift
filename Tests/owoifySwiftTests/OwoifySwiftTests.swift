import XCTest
@testable import OwoifySwift

final class OwoifySwiftTests: XCTestCase {
    let source = "Hello World! This is the string to owo! Kinda cute, isn't it?"
    let pokemonNameListPath = "Resources/pokemons.txt"
    let warAndPeacePath = "Resources/war_and_peace_chapter01-20.txt"

    func testOwoify() {
        XCTAssertNotEqual(owoify(source: source), source)
    }

    func testOwo() {
        let text = owoify(source: source)
        XCTAssertNotNil(text)
        XCTAssertNotEqual(text, "")
    }

    func testUwu() {
        let text = owoify(source: source, level: OwoifyLevel.Uwu)
        XCTAssertNotNil(text)
        XCTAssertNotEqual(text, "")
    }

    func testUvu() {
        let text = owoify(source: source, level: OwoifyLevel.Uvu)
        XCTAssertNotNil(text)
        XCTAssertNotEqual(text, "")
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

    func testPokemonNames() throws {
        let path = Bundle.module.url(forResource: "pokemons", withExtension: "txt")!
        let pokemons = try String(contentsOfFile: path.path)
        let pokemonNames = pokemons.split(separator: "\n")
        pokemonNames.forEach { name in
            let nameWithOwo = owoify(source: String(name))
            let nameWithUwu = owoify(source: String(name), level: OwoifyLevel.Uwu)
            let nameWithUvu = owoify(source: String(name), level: OwoifyLevel.Uvu)
            XCTAssertNotNil(nameWithOwo)
            XCTAssertNotNil(nameWithUwu)
            XCTAssertNotNil(nameWithUvu)
            XCTAssertNotEqual(nameWithOwo, "")
            XCTAssertNotEqual(nameWithUwu, "")
            XCTAssertNotEqual(nameWithUvu, "")
        }
    }
    
    func testLongText() throws {
        let path = Bundle.module.url(forResource: "war_and_peace_chapter01-20", withExtension: "txt")!
        let text = try String(contentsOfFile: path.path)
        let textWithOwo = owoify(source: text)
        let textWithUwu = owoify(source: text, level: OwoifyLevel.Uwu)
        let textWithUvu = owoify(source: text, level: OwoifyLevel.Uvu)
        XCTAssertNotNil(textWithOwo)
        XCTAssertNotNil(textWithUwu)
        XCTAssertNotNil(textWithUvu)
        XCTAssertNotEqual(textWithOwo, "")
        XCTAssertNotEqual(textWithUwu, "")
        XCTAssertNotEqual(textWithUvu, "")
    }

    static var allTests = [
        ("testOwoify", testOwoify),
        ("testOwo", testOwo),
        ("testUwu", testUwu),
        ("testUvu", testUvu),
        ("testOwoNotEqualToUwu", testOwoNotEqualToUwu),
        ("testOwoNotEqualToUvu", testOwoNotEqualToUvu),
        ("testUwuNotEqualToUvu", testUwuNotEqualToUvu),
        ("testPokemonNames", testPokemonNames),
        ("testLongText", testLongText)
    ]
}
