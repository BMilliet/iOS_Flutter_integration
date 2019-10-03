import UIKit
import Flutter

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

  override func application(_ application: UIApplication, didFinishLaunchingWithOptions
    launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)

    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let rootViewController = storyboard.instantiateViewController(withIdentifier: "MainTabBar") as UIViewController
    let navigationController = UINavigationController.init(rootViewController: rootViewController)
    self.window.rootViewController = navigationController

    window.makeKeyAndVisible()
    navigationController.setNavigationBarHidden(true, animated: false)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
