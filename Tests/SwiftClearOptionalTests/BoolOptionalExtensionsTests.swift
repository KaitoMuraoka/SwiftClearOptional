//
//  OptionalBoolExtensionsTests.swift
//
//
//  Created by 村岡海人 on 2023/12/21.
//

import XCTest

class OptionalBoolExtensionsTests: XCTestCase {

    func testOrFalse() {
        let trueOptional: Bool? = true
        let falseOptional: Bool? = false
        let nilOptional: Bool? = nil

        XCTAssertTrue(trueOptional.orFalse)
        XCTAssertFalse(falseOptional.orFalse)
        XCTAssertFalse(nilOptional.orFalse)
    }

    func testOrTrue() {
        let trueOptional: Bool? = true
        let falseOptional: Bool? = false
        let nilOptional: Bool? = nil

        XCTAssertTrue(trueOptional.orTrue)
        XCTAssertFalse(falseOptional.orTrue)
        XCTAssertTrue(nilOptional.orTrue)
    }
}
