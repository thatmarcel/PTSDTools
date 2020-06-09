//
//  String.swift
//  PTDTools
//
//  Created by Patrik Svoboda on 30/11/2019.
//  Copyright © 2019 Patrik Svoboda. All rights reserved.
//

import Foundation

public extension String {
    func insensitiveIsIn(_ string: String) -> Bool {
        self.range(of: string, options: [.caseInsensitive, .diacriticInsensitive]) != nil
    }
    static func random(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }

        return String(data: data, encoding: .utf8)
    }
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}
