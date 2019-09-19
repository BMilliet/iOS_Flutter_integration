import UIKit

class Helper {
  static func getLastRootViewController() -> UIViewController? {
    return UIApplication.shared.keyWindow?.rootViewController
  }
}
