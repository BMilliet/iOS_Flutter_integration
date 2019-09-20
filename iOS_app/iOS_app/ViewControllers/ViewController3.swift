import UIKit

class ViewController3: UIViewController {

  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = "iOS native view 3"
    view.backgroundColor = .orange
  }

  @IBAction func launchFlutterView(_ sender: Any) {
    FlutterManager().present(initialRoute: FlutterInitialRoute.initialSixthView)
  }
}
