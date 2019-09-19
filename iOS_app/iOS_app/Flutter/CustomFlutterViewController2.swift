import Flutter

class CustomFlutterViewController2: FlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setInitialRoute(FlutterInitialRoute.initialFifthView.rawValue)
    FlutterManager().setMethodChannel(to: self)
  }
}
