import Flutter

class FlutterManager {

  private let flutterChannelName = "flutter_app_channel"
  var messageFromFlutter = ""
  var messageToFlutter = ""
  var currenteViewController: UIViewController?

  func present(on viewController: UIViewController, initialRoute: FlutterInitialRoute) {
    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController.setInitialRoute(initialRoute.rawValue)
    setMethodChannel(to: flutterViewController, with: viewController)
    viewController.present(flutterViewController, animated: true, completion: nil)
  }

  private func setMethodChannel(to flutterViewController: FlutterViewController, with viewController: UIViewController) {
    let flutterChannel = FlutterMethodChannel(name: flutterChannelName, binaryMessenger: flutterViewController)
    self.currenteViewController = viewController
    flutterChannel.setMethodCallHandler({ method, result in
      switch method.method {
      case "getMessageFromIOS": result(self.sendMessageToFlutter())
      case "sendMessageToIOS": self.getMessageFromFlutter(method)
      case "openiOSView": self.openiOSView()
      default: self.methodNotFound()
      }
    })
  }

  private func getMessageFromFlutter(_ call: FlutterMethodCall) {
    messageFromFlutter = call.arguments as! String
  }

  private func sendMessageToFlutter() -> String {
    return messageToFlutter
  }

  private func openiOSView() {
    let controller = ViewController4()
    currenteViewController?.view.insertSubview(controller.view, at: 0)
    print("test")
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
