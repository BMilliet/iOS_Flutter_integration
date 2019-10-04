import Flutter

class FlutterViewController1: FlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setInitialRoute(FlutterInitialRoute.initialFourthView.rawValue)
    FlutterMethodHandler().setMethodChannel(to: self)
  }
}
