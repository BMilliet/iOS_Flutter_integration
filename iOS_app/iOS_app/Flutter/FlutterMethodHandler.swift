import Flutter
import FlutterPluginRegistrant

class FlutterMethodHandler {

  private let flutterChannelName = "flutter_app_channel"
  private let flutterManager = FlutterManager()
  private let router = Router()
  var messageFromFlutter = ""
  var messageToFlutter = ""

  func setMethodChannel(to flutterViewController: FlutterViewController) {
    GeneratedPluginRegistrant.register(with: flutterViewController)
    let flutterChannel = FlutterMethodChannel(name: flutterChannelName, binaryMessenger: flutterViewController as! FlutterBinaryMessenger)
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
    flutterManager.push(initialRoute: FlutterInitialRoute.initialSeventhView)
  }

  private func popFlutterView(_ call: FlutterMethodCall) {
    let animated = call.arguments as! Bool
    router.pop(animated)
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
