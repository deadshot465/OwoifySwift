import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(owoifySwiftTests.allTests),
    ]
}
#endif
