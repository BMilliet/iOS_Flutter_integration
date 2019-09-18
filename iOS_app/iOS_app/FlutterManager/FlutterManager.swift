import Flutter
import FlutterPluginRegistrant

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
    GeneratedPluginRegistrant.register(with: flutterViewController)
    let flutterChannel = FlutterMethodChannel(name: flutterChannelName, binaryMessenger: flutterViewController)
    flutterChannel.setMethodCallHandler({ method, result in
      switch method.method {
      case "getMessageFromIOS": result(self.sendMessageToFlutter())
      case "sendMessageToIOS": self.getMessageFromFlutter(method)
      case "openiOSView": self.openiOSView()
      case "openFlutterView": self.openFlutterView()
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
    Helper.getTopMostViewController()?.present(controller, animated: true, completion: nil)
  }

  private func openFlutterView() {
    let topController = Helper.getTopMostViewController()!
    self.present(on: topController, initialRoute: FlutterInitialRoute.initialSixthView)
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
