import Flutter

class FlutterManager {

  private let router = Router()

  func push(initialRoute: FlutterInitialRoute) {
    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController.setInitialRoute(initialRoute.rawValue)
    flutterViewController.splashScreenView = getSplash()
    FlutterMethodHandler().setMethodChannel(to: flutterViewController)
    router.push(flutterViewController)
  }

  private func getSplash() -> UIView {
    let splash = UIView(frame: CGRect())
    splash.backgroundColor = UIColor(red: 0, green: 188, blue: 212, alpha: 1)
    return splash
  }
}
