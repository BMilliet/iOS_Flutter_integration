import Flutter

class FlutterManager {

  private let flutterChannelName = "flutter_app_channel"
  var messageFromFlutter = ""
  var messageToFlutter = ""

  func present(on viewController: UIViewController, initialRoute: FlutterInitialRoute) {
    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController.setInitialRoute(initialRoute.rawValue)
    setMethodChannel(to: flutterViewController, with: viewController)
    viewController.present(flutterViewController, animated: true, completion: nil)
  }

  private func setMethodChannel(to flutterViewController: FlutterViewController, with viewController: UIViewController) {
    let flutterChannel = FlutterMethodChannel(name: flutterChannelName, binaryMessenger: flutterViewController)
    flutterChannel.setMethodCallHandler({ method, result in
      switch method.method {
      case "getMessageFromIOS": result(self.sendMessageToFlutter())
      case "sendMessageToIOS": self.getMessageFromFlutter(method)
      default: self.methodNotFound()
      }
    })
  }

  private func getMessageFromFlutter(_ call: FlutterMethodCall) {
    messageFromFlutter = call.arguments as! String
  }

  private func sendMessageToFlutter() -> String {
    return messageFromFlutter
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
