//
//  StringOptionalExtensions.swift
//
//
//  Created by 村岡海人 on 2023/12/21.
//

import Foundation

/// optional string
public extension Optional where Wrapped == String {
    var orBlank: String {
        self ?? ""
    }

    func or(_ defaultText: String) -> String {
        self ?? defaultText
    }
}
