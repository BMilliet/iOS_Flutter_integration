import Flutter
import FlutterPluginRegistrant

class CustomFlutterViewController: FlutterViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    setInitialRoute(FlutterInitialRoute.initialFifthView.rawValue)
    setMethodChannel()
  }

  private func setMethodChannel() {
    GeneratedPluginRegistrant.register(with: self)
    let flutterChannel = FlutterMethodChannel(name: "flutter_app_channel", binaryMessenger: self)
    flutterChannel.setMethodCallHandler({ method, result in
      switch method.method {
      case "openiOSView": self.openiOSView()
      case "openFlutterView": self.openFlutterView()
      default: self.methodNotFound()
      }
    })
  }

  private func openiOSView() {
    let controller = ViewController4()
    Helper.getLastRootViewController()!.present(controller, animated: false, completion: nil)
  }

  private func openFlutterView() {
    let topController = Helper.getTopMostViewController()!
    FlutterManager().present(on: topController, initialRoute: FlutterInitialRoute.initialSecondView)
  }

  private func methodNotFound() {
    print("Method not found")
  }
}
