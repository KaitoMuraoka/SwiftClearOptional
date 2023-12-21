//
//  NumericOptionalExtensionsTests.swift
//  
//
//  Created by 村岡海人 on 2023/12/21.
//

import XCTest
import CoreGraphics

class NumericOptionalsExtensionsTests: XCTestCase {

    // Tests for Int
    func testIntOrZero() {
        let nonNilInt: Int? = 5
        let nilInt: Int? = nil

        XCTAssertEqual(nonNilInt.orZero, 5)
        XCTAssertEqual(nilInt.orZero, 0)
    }

    func testIntOrValue() {
        let nonNilInt: Int? = 5
        let nilInt: Int? = nil

        XCTAssertEqual(nonNilInt.or(3), 5)
        XCTAssertEqual(nilInt.or(3), 3)
    }

    // Tests for Float
    func testFloatOrZero() {
        let nonNilFloat: Float? = 5.5
        let nilFloat: Float? = nil

        XCTAssertEqual(nonNilFloat.orZero, 5.5)
        XCTAssertEqual(nilFloat.orZero, 0)
    }

    // Tests for Double
    func testDoubleOrZero() {
        let nonNilDouble: Double? = 5.5
        let nilDouble: Double? = nil

        XCTAssertEqual(nonNilDouble.orZero, 5.5)
        XCTAssertEqual(nilDouble.orZero, 0)
    }

    // Tests for CGFloat
    func testCGFloatOrZero() {
        let nonNilCGFloat: CGFloat? = 5.5
        let nilCGFloat: CGFloat? = nil

        XCTAssertEqual(nonNilCGFloat.orZero, 5.5)
        XCTAssertEqual(nilCGFloat.orZero, 0)
    }

    func testCGFloatOrValue() {
        let nonNilCGFloat: CGFloat? = 5.5
        let nilCGFloat: CGFloat? = nil

        XCTAssertEqual(nonNilCGFloat.or(3.3), 5.5)
        XCTAssertEqual(nilCGFloat.or(3.3), 3.3)
    }
}
