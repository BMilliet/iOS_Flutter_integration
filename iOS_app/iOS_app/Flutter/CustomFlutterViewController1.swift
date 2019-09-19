import Flutter

class CustomFlutterViewController1: FlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setInitialRoute(FlutterInitialRoute.initialFourthView.rawValue)
    FlutterManager().setMethodChannel(to: self)
  }
}
