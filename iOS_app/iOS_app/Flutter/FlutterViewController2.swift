import Flutter

class FlutterViewController2: CustomFlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setInitialRoute(FlutterInitialRoute.initialFifthView.rawValue)
  }
}
