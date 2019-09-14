import UIKit

class ViewController1: UIViewController {

  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var flutterLaunchButton: UIButton!


  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func launchFlutter(_ sender: UIButton) {
    FlutterManager().present(on: self, initialRoute: FlutterInitialRoute.initialRoute)
  }
}
