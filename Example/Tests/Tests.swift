import XCTest
import ImageAlertAction

class Tests: XCTestCase {
  func testThatImageIsCorrectlySet() {
    let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), style: .cancel)
    XCTAssertNotNil(action.image)
  }
    
    func testCheckmarkIsCorrectlySet() {
      let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), isSelected: true, style: .cancel)
      XCTAssertTrue(action.isSelected)
    }
    
    func testCheckmarkIsNotSet() {
      let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), style: .cancel)
      XCTAssertFalse(action.isSelected)
    }
}
