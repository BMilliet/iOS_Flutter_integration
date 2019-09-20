import UIKit

class Helper {
  static func getRootViewController() -> UIViewController? {
    return UIApplication.shared.keyWindow?.rootViewController
  }
}
