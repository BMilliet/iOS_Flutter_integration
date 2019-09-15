import UIKit

class ViewController2: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var textField: UITextField!

  let flutterManager = FlutterManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = "iOS native view 2"
    label2.text = "send message to flutter!"
    view.backgroundColor = .orange
  }

  @IBAction func launchThirdInitialFlutterView(_ sender: Any) {
    flutterManager.messageToFlutter = textField.text ?? ""
    flutterManager.present(on: self, initialRoute: FlutterInitialRoute.initialThirdView)
  }
}
