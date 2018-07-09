import XCTest
import ImageAlertAction

class Tests: XCTestCase {
  func testThatImageIsCorrectlySet() {
    let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), style: .cancel)
    XCTAssertNotNil(action.image)
  }
}
