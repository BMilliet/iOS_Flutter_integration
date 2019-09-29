import Flutter
import FlutterPluginRegistrant

class FlutterManager {

  private let flutterChannelName = "flutter_app_channel"
  private let router = Router()
  var messageFromFlutter = ""
  var messageToFlutter = ""

  func present(initialRoute: FlutterInitialRoute) {
    let flutterViewController = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController.setInitialRoute(initialRoute.rawValue)
    flutterViewController.splashScreenView = getSplash()
    setMethodChannel(to: flutterViewController)
    router.push(flutterViewController)
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
    router.push(controller)
  }

  private func openFlutterView() {
    self.present(initialRoute: FlutterInitialRoute.initialSeventhView)
  }

  private func popFlutterView(_ call: FlutterMethodCall) {
    let animated = call.arguments as! Bool
    router.pop(animated)
  }

  private func methodNotFound() {
    print("Method not found")
  }

  private func getSplash() -> UIView {
    let splash = UIView(frame: CGRect())
    splash.backgroundColor = UIColor(red: 0, green: 188, blue: 212, alpha: 1)
    return splash
  }
}
