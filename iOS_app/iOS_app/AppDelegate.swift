import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

  override func application(_ application: UIApplication, didFinishLaunchingWithOptions
    launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    //let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    //GeneratedPluginRegistrant.register(with: self)

    window = UIWindow(frame: UIScreen.main.bounds)

    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    let rootViewController = storyboard.instantiateViewController(withIdentifier: "MainTabBar") as UIViewController

    let navigationController = UINavigationController.init(rootViewController: rootViewController)
    self.window?.rootViewController = navigationController
    window.makeKeyAndVisible()
    navigationController.setNavigationBarHidden(true, animated: false)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
