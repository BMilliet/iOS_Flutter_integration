import UIKit
import Flutter

class MainTabBar: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let flutterViewController1 = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController1.setInitialRoute(FlutterInitialRoute.initialFourthView.rawValue)

    let flutterViewController2 = FlutterViewController(nibName: nil, bundle: nil)
    flutterViewController2.setInitialRoute(FlutterInitialRoute.initialFifthView.rawValue)

    self.viewControllers?.append(flutterViewController1)
    self.viewControllers?.append(flutterViewController2)
  }
}
