import UIKit

class ViewController1: UIViewController {

  @IBOutlet weak var label: UILabel!

  let flutterManager = FlutterManager()

  override func viewDidLoad() {
    super.viewDidLoad()
    label.text = "iOS native view 1"
    view.backgroundColor = .orange
  }

  @IBAction func launchFirstInitialFlutterView(_ sender: Any) {
    flutterManager.present(on: self, initialRoute: FlutterInitialRoute.initialFirstView)
  }
  
  @IBAction func launchSecondInitialFlutterView(_ sender: Any) {
    flutterManager.present(on: self, initialRoute: FlutterInitialRoute.initialSecondView)
  }
}
