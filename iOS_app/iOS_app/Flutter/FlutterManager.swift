import Flutter
import FlutterPluginRegistrant

class FlutterManager {

  private let flutterChannelName = "flutter_app_channel"
  var messageFromFlutter = ""
  var messageToFlutter = ""
  var currenteView: UIViewController?

  func present(on viewController: UIViewController, initialRoute: FlutterInitialRoute) {
    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController.setInitialRoute(initialRoute.rawValue)
    currenteView = flutterViewController
    setMethodChannel(to: flutterViewController)
    viewController.present(flutterViewController, animated: true, completion: nil)
  }

  func setMethodChannel(to flutterViewController: FlutterViewController) {
    GeneratedPluginRegistrant.register(with: flutterViewController)
    let flutterChannel = FlutterMethodChannel(name: flutterChannelName, binaryMessenger: flutterViewController)
    flutterChannel.setMethodCallHandler({ method, result in
      switch method.method {
      case "getMessageFromIOS": result(self.sendMessageToFlutter())
      case "sendMessageToIOS": self.getMessageFromFlutter(method)
      case "openiOSView": self.openiOSView()
      case "openFlutterView": self.openFlutterView()
      case "popFlutterView": self.popFlutterView(method)
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
    Helper.getLastRootViewController()!.present(controller, animated: false, completion: nil)
  }

  private func openFlutterView() {
    let topController = Helper.getLastRootViewController()!
    self.present(on: topController, initialRoute: FlutterInitialRoute.initialSixthView)
  }

  private func popFlutterView(_ call: FlutterMethodCall) {
    let animated = call.arguments as! Bool
    currenteView?.dismiss(animated: animated, completion: nil)
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
