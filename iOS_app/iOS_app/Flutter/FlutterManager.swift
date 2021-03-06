import Flutter

class FlutterManager {

  func push(initialRoute: FlutterInitialRoute) {
    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController.setInitialRoute(initialRoute.rawValue)
    flutterViewController.splashScreenView = getSplash()
    FlutterMethodHandler().setMethodChannel(to: flutterViewController)
    Router().push(flutterViewController)
  }

  private func getSplash() -> UIView {
    let splash = UIView(frame: CGRect())
    splash.backgroundColor = UIColor(red: 0, green: 188/255, blue: 212/255, alpha: 1)
    return splash
  }
}
