import UIKit

class ViewController4: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    createLabel()
    createButton()
    view.backgroundColor = .orange
  }

  private func createLabel() {
    let label = UILabel(frame: CGRect(x: 50, y: 50, width: 200, height: 21))
    label.textAlignment = .center
    label.text = "iOS native view 4"
    self.view.addSubview(label)
  }

  private func createButton() {
    let button = UIButton(frame: CGRect(x: 50, y: 100, width: 200, height: 50))
    button.backgroundColor = .blue
    button.setTitle("Back to main iOS tabbar", for: .normal)
    button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    self.view.addSubview(button)
  }

  @objc func buttonAction(sender: UIButton!) {
    self.navigationController?.popViewController(animated: true)
  }
}
