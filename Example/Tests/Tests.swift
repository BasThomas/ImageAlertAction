import XCTest
import ImageAlertAction

class Tests: XCTestCase {
  func testThatImageIsCorrectlySet() {
    let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), style: .cancel)
    XCTAssertNotNil(action.image)
  }
    
    func testCheckmarkIsCorrectlySet() {
      let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), isChecked: true, style: .cancel)
      XCTAssertTrue(action.isChecked)
    }
    
    func testCheckmarkIsNotSet() {
      let action = UIAlertAction(title: "Hello world!", image: #imageLiteral(resourceName: "settings"), style: .cancel)
      XCTAssertFalse(action.isChecked)
    }
}
