import Flutter

class FlutterViewController1: CustomFlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setInitialRoute(FlutterInitialRoute.initialFourthView.rawValue)
  }
}
