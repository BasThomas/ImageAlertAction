import UIKit
import ImageAlertAction

class ViewController: UIViewController {
  @IBAction func viewAlert(_ sender: Any) {
    present(alertController(withStyle: .alert), animated: true)
  }

  @IBAction func viewActionSheet(_ sender: Any) {
    present(alertController(withStyle: .actionSheet), animated: true)
  }

  private func alertController(withStyle style: UIAlertControllerStyle) -> UIAlertController {
    let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: style)

    let settings = UIAlertAction(title: "Settings", image: #imageLiteral(resourceName: "settings"), style: .default)
    alertController.addAction(settings)

    let cancel = UIAlertAction(title: "Cancel", style: .cancel)
    alertController.addAction(cancel)

    return alertController
  }
}
