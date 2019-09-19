import UIKit

class MainTabBar: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()

    self.viewControllers![3].tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 3)

     self.viewControllers![4].tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 4)
  }
}
