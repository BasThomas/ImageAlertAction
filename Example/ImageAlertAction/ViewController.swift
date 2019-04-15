import UIKit
import ImageAlertAction

class ViewController: UIViewController {
  @IBAction func viewAlert(_ sender: UIButton) {
    present(alertController(withStyle: .alert, from: sender), animated: true)
  }

  @IBAction func viewActionSheet(_ sender: UIButton) {
    present(alertController(withStyle: .actionSheet, from: sender), animated: true)
  }

  private func alertController(
    withStyle style: UIAlertController.Style,
    from sender: UIButton
  ) -> UIAlertController {
    let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: style)

    let settings = UIAlertAction(title: "Settings", image: #imageLiteral(resourceName: "settings"), style: .default)
    alertController.addAction(settings)

    let cancel = UIAlertAction(title: "Cancel", style: .cancel)
    alertController.addAction(cancel)

    alertController.popoverPresentationController?.sourceView = sender
    alertController.popoverPresentationController?.sourceRect = sender.bounds

    return alertController
  }
}
