import UIKit

class ViewController2: UIViewController {

  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = "iOS native view 2"
    view.backgroundColor = .orange
  }
}
