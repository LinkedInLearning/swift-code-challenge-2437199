//
//  SecurityWrapper.swift
//  SecureStringStorage
//
//  Created by Karoly Nyisztor on 3/7/22.
//

import Foundation
import Security

func secureStore(string: String, forKey key: String) -> Bool {
    guard !string.isEmpty && !key.isEmpty else {
        return false
    }
    
    let queryDictionary: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
                                          kSecValueData as String: string.data(using: .utf8)!,
                                          kSecAttrAccount as String: key.data(using: .utf8)!]
    
    let foundItem = retrieveItem(forKey: key)
    if foundItem == nil {
        let status = SecItemAdd(queryDictionary as CFDictionary, nil)
        guard status == errSecSuccess else {
            print("\n\tSecItemAdd() failed. Reason: \(SecCopyErrorMessageString(status, nil) as String? ?? "unknown")\n")
            return false
        }
    } else if foundItem != string { // if same values, no need to update
        let updateQuery: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
                                          kSecAttrAccount as String: key.data(using: .utf8)!]
        
        let attributes: [String: Any] = [kSecValueData as String: string.data(using: .utf8)!]
        let updateStatus = SecItemUpdate(updateQuery as CFDictionary, attributes as CFDictionary)
        guard updateStatus == errSecSuccess else {
            return false
        }
    }
    return true
}

func retrieveItem(forKey key: String) -> String? {
    let queryDictionary: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
                                          kSecAttrAccount as String: key.data(using: .utf8)!,
                                          kSecReturnData as String: true]    
    var item: CFTypeRef?
    
    let status = SecItemCopyMatching(queryDictionary as CFDictionary, &item)
    guard status == errSecSuccess,
    let data = item as? Data else {
        return nil
    }
    
    return String.init(data: data, encoding: .utf8)
}
