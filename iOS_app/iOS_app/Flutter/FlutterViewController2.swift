import Flutter

class FlutterViewController2: FlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setInitialRoute(FlutterInitialRoute.initialFifthView.rawValue)
    FlutterMethodHandler().setMethodChannel(to: self)
  }
}
