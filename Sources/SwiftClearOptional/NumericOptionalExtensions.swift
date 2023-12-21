//
//  NumericOptionalsExtensions.swift
//  
//
//  Created by 村岡海人 on 2023/12/21.
//

import Foundation

public extension Optional where Wrapped == Int {
    var orZero: Int {
        self ?? 0
    }

    func or(_ value: Int) -> Int {
        self ?? value
    }
}

public extension Optional where Wrapped == Float {
    var orZero: Float {
        self ?? 0
    }
}

public extension Optional where Wrapped == Double {
    var orZero: Double {
        self ?? 0
    }
}

public extension Optional where Wrapped == CGFloat {
    var orZero: CGFloat {
        self ?? 0
    }

    func or(_ value: CGFloat) -> CGFloat {
        self ?? value
    }
}
