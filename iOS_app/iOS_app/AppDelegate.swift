import UIKit
import Flutter

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

  var flutterEngine: FlutterEngine?

  override func application(_ application: UIApplication, didFinishLaunchingWithOptions
    launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    self.flutterEngine = FlutterEngine(name: "flutter_engine", project: nil)
    self.flutterEngine?.run(withEntrypoint: nil)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

