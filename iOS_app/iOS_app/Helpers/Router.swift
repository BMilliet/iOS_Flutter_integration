import UIKit

class Router {

  func push(_ viewController: UIViewController) {
    getRootViewController().pushViewController(viewController, animated: true)
  }

  func pop(_ animated: Bool) {
    getRootViewController().popViewController(animated: animated)
  }

  private func getRootViewController() -> UINavigationController {
    return Helper.getRootViewController()! as! UINavigationController
  }
}
