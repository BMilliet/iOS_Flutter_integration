import Flutter

class FlutterManager {

  private let flutterChannelName = "flutter_app_channel"

  func present(on viewController: UIViewController, initialRoute: FlutterInitialRoute) {
    let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
    let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!
    //flutterViewController.setInitialRoute(initialRoute.rawValue)
    setMethodChannel(to: flutterViewController, with: viewController)
    viewController.present(flutterViewController, animated: true, completion: nil)
  }

  private func setMethodChannel(to flutterViewController: FlutterViewController, with viewController: UIViewController) {
    let flutterChannel = FlutterMethodChannel(name: flutterChannelName, binaryMessenger: flutterViewController)
    flutterChannel.setMethodCallHandler({ method, result in
      switch method.method {
      default: self.methodNotFound()
      }
    })
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
