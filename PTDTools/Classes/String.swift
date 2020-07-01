//
//  String.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 30/11/2019.
//  Copyright © 2019 Patrik Svoboda. All rights reserved.
//

import Foundation

public extension String {
    
    /// Used for searching or general checking.
    /// - Parameter string: String to check if is contained in the root
    /// - Returns: Bool indicating the containment in the root
    func insensitiveContains(_ string: String) -> Bool {
        range(of: string, options: [.caseInsensitive, .diacriticInsensitive]) != nil
    }
    
    static func random(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
    func toBase64() -> String {
        Data(utf8).base64EncodedString()
    }
}
