import XCTest
@testable import NumberToWord

final class NumberToWordTests: XCTestCase {
    
    func testConvert() throws {
        XCTAssertEqual(NumberToWord.convert(0000), "Zero")
        XCTAssertEqual(NumberToWord.convert(0), "Zero")
        XCTAssertEqual(NumberToWord.convert(1), "One")
        XCTAssertEqual(NumberToWord.convert(12), "Twelve")
        XCTAssertEqual(NumberToWord.convert(123), "One hundred and twenty three")
        XCTAssertEqual(NumberToWord.convert(1234), "One thousand two hundred and thirty four")
    }
    
    func testIntExtension() throws {
        XCTAssertEqual(0000.toWord(), "Zero")
        XCTAssertEqual(0.toWord(), "Zero")
        XCTAssertEqual(1.toWord(), "One")
        XCTAssertEqual(12.toWord(), "Twelve")
        XCTAssertEqual(123.toWord(), "One hundred and twenty three")
        XCTAssertEqual(1234.toWord(), "One thousand two hundred and thirty four")
    }
}
