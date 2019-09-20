import UIKit

class ViewController2: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var flutterLabel: UILabel!

  let flutterManager = FlutterManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = "iOS native view 2"
    label2.text = "send message to flutter!"
    view.backgroundColor = .orange
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    flutterLabel.text = flutterManager.messageFromFlutter
  }

  @IBAction func launchThirdInitialFlutterView(_ sender: Any) {
    flutterManager.messageToFlutter = textField.text ?? ""
    flutterManager.present(initialRoute: FlutterInitialRoute.initialThirdView)
  }
}
