import Flutter

class FlutterViewController1: FlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.setInitialRoute(FlutterInitialRoute.initialFourthView.rawValue)
    FlutterManager().setMethodChannel(to: self)
  }
}
