import XCTest
@testable import EasierCGRect

final class EasierCGRectTests: XCTestCase {
    
    /// This rectangle's values should be used in testing for comparisons
    let sourceRectangle = CGRect(x: 10, y: 20, width: 100, height: 200)
    
    func testNumbers() {
        let numberBasedRect = CGRect(x: NSNumber(value: 10),
                                     y: NSNumber(value: 20),
                                     width: NSNumber(value: 100),
                                     height: NSNumber(value: 200))
        
        XCTAssertEqual(numberBasedRect.origin.x, sourceRectangle.origin.x)
        XCTAssertEqual(numberBasedRect.origin.y, sourceRectangle.origin.y)
        XCTAssertEqual(numberBasedRect.size.width, sourceRectangle.size.width)
        XCTAssertEqual(numberBasedRect.size.height, sourceRectangle.size.height)
    }
    
    func testValueRetrieval() {
        XCTAssertEqual(NSNumber(value: 10), sourceRectangle.number(from: .x))
        XCTAssertEqual(NSNumber(value: 20), sourceRectangle.number(from: .y))
        XCTAssertEqual(NSNumber(value: 100), sourceRectangle.number(from: .width))
        XCTAssertEqual(NSNumber(value: 200), sourceRectangle.number(from: .height))
        
        XCTAssertEqual(Float(10), sourceRectangle.float(from: .x))
        XCTAssertEqual(Float(20), sourceRectangle.float(from: .y))
        XCTAssertEqual(Float(100), sourceRectangle.float(from: .width))
        XCTAssertEqual(Float(200), sourceRectangle.float(from: .height))
    }
    
    func testSizeConversions() {
        XCTAssertEqual(NSNumber(value: 100), sourceRectangle.size.widthNumber)
        XCTAssertEqual(NSNumber(value: 200), sourceRectangle.size.heightNumber)
        XCTAssertEqual(Float(100), sourceRectangle.size.widthFloat)
        XCTAssertEqual(Float(200), sourceRectangle.size.heightFloat)
    }
    
    func testPointConversions() {
        XCTAssertEqual(NSNumber(value: 10), sourceRectangle.origin.xNumber)
        XCTAssertEqual(NSNumber(value: 20), sourceRectangle.origin.yNumber)
        XCTAssertEqual(Float(10), sourceRectangle.origin.xFloat)
        XCTAssertEqual(Float(20), sourceRectangle.origin.yFloat)
    }

    static var allTests = [
        ("testNumbers", testNumbers),
        ("testValueRetrieval", testValueRetrieval),
        ("testSizeConversions", testSizeConversions),
        ("testPointConversions", testPointConversions),
    ]
}
