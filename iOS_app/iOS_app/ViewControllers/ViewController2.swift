import UIKit

class ViewController2: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var flutterLabel: UILabel!

  let flutterMethodHandler = FlutterMethodHandler()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = "iOS native view 2"
    label2.text = "send message to flutter!"
    view.backgroundColor = .orange

    let tap = UITapGestureRecognizer(target: self, action: #selector(closeKeyBoard))
    view.addGestureRecognizer(tap)
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    flutterLabel.text = MessageProvider.shared.messageFromFlutter
  }

  @IBAction func launchThirdInitialFlutterView(_ sender: Any) {
    MessageProvider.shared.messageToFlutter = textField.text ?? ""
    FlutterManager().push(initialRoute: FlutterInitialRoute.initialThirdView)
  }

  @objc func closeKeyBoard() {
    view.endEditing(true)
  }
}
