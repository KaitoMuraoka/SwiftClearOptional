//
//  StringOptionalExtensionsTests.swift
//
//
//  Created by 村岡海人 on 2023/12/21.
//

import XCTest

class StringOptionalExtensionsTests: XCTestCase {

    // Test for orBlank
    func testOrBlank() {
        let nonNilString: String? = "Hello"
        let nilString: String? = nil

        XCTAssertEqual(nonNilString.orBlank, "Hello")
        XCTAssertEqual(nilString.orBlank, "")
    }

    // Test for or(defaultText:)
    func testOrDefaultText() {
        let nonNilString: String? = "Hello"
        let nilString: String? = nil

        XCTAssertEqual(nonNilString.or("Default"), "Hello")
        XCTAssertEqual(nilString.or("Default"), "Default")
    }
}
