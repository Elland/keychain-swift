import UIKit
import KeychainSwift

let TegKeychainDemo_keyName: NSString = "my key"

class ViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  
  @IBOutlet weak var valueLabel: UILabel!
  
  @IBOutlet weak var synchronizableSwitch: UISwitch!
  
  let keychain = KeychainSwift()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateValueLabel()
  }
  
  @IBAction func onSaveTapped(_ sender: AnyObject) {
    closeKeyboard()
    
    if let text = textField.text as NSString? {
      keychain.synchronizable = synchronizableSwitch.isOn
      keychain.set(text, forKey: TegKeychainDemo_keyName)
      updateValueLabel()
    }
  }
  
  @IBAction func onDeleteTapped(_ sender: AnyObject) {
    closeKeyboard()

    keychain.synchronizable = synchronizableSwitch.isOn
    keychain.delete(TegKeychainDemo_keyName)
    updateValueLabel()
  }
  
  @IBAction func onGetTapped(_ sender: AnyObject) {
    closeKeyboard()

    updateValueLabel()
  }
  
  fileprivate func updateValueLabel() {
    keychain.synchronizable = synchronizableSwitch.isOn
    
    if let value = keychain.get(TegKeychainDemo_keyName) {
      valueLabel.text = "In Keychain: \(value)"
    } else {
      valueLabel.text = "no value in keychain"
    }
  }
  
  fileprivate func closeKeyboard() {
    textField.resignFirstResponder()
  }
  
  @IBAction func didTapView(_ sender: AnyObject) {
    closeKeyboard()
  }
}
