import Flutter

class CustomFlutterViewController: FlutterViewController {

  override var engine: FlutterEngine! {
    get {
      return FlutterEngineProvider.shared.getEngine()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    splashScreenView = getSplash()
    FlutterManager().setMethodChannel(to: self)
  }

  private func getSplash() -> UIView {
    let splash = UIView(frame: CGRect())
    splash.backgroundColor = UIColor(red: 0, green: 188, blue: 212, alpha: 1)
    return splash
  }
}
