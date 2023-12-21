//
//  DateOptionalExtensions.swift
//
//
//  Created by 村岡海人 on 2023/12/21.
//

import Foundation

public extension Optional where Wrapped == Date {
    var orToday: Date {
        self ?? Date()
    }
}
