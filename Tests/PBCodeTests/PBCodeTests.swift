import XCTest
@testable import PBCode

class PBCodeTests: XCTestCase {
    func testIsArray(){
        XCTAssertEqual(Pairer.init(numbersList: [2,5,3,1,4], target: 4).result , [13,31])
    }
}
extension PBCodeTests {
    static var allTests : [(String , (PBCodeTests) -> () throws -> Void)]{
        return [("testIsArray", testIsArray)]
    }
}
