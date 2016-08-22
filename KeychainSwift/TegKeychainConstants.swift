import Foundation
import Security

/// Constants used by the library
public struct KeychainSwiftConstants {
  /// Specifies a Keychain access group. Used for sharing Keychain items between apps.
  public static var accessGroup: NSString { return toString(kSecAttrAccessGroup) }
  
  /**
   
   A value that indicates when your app needs access to the data in a keychain item. The default value is AccessibleWhenUnlocked. For a list of possible values, see KeychainSwiftAccessOptions.
   
   */
  public static var accessible: NSString { return toString(kSecAttrAccessible) }
  
  /// Used for specifying a String key when setting/getting a Keychain value.
  public static var attrAccount: NSString { return toString(kSecAttrAccount) }

  /// Used for specifying synchronization of keychain items between devices.
  public static var attrSynchronizable: NSString { return toString(kSecAttrSynchronizable) }
  
  /// An item class key used to construct a Keychain search dictionary.
  public static var klass: NSString { return toString(kSecClass) }
  
  /// Specifies the number of values returned from the keychain. The library only supports single values.
  public static var matchLimit: NSString { return toString(kSecMatchLimit) }
  
  /// A return data type used to get the data from the Keychain.
  public static var returnData: NSString { return toString(kSecReturnData) }
  
  /// Used for specifying a value when setting a Keychain value.
  public static var valueData: NSString { return toString(kSecValueData) }
  
  static func toString(_ value: CFString) -> NSString {
    return value as NSString
  }
}


