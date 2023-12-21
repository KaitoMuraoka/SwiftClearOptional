//
//  DateOptionalExtensionsTests.swift
//  
//
//  Created by 村岡海人 on 2023/12/21.
//

import XCTest

class OptionalDateExtensionsTests: XCTestCase {

    func testOrToday() {
        // Setting a specific date for testing
        let specificDate = Calendar.current.date(from: DateComponents(year: 2023, month: 1, day: 1))!

        let nonNilDate: Date? = specificDate
        XCTAssertEqual(nonNilDate.orToday, specificDate)

        let nilDate: Date? = nil
        
        XCTAssertEqual(Calendar.current.startOfDay(for: nilDate.orToday), Calendar.current.startOfDay(for: Date()))
    }

    func testOrSpecifiedDate() {
        let specificDate = Calendar.current.date(from: DateComponents(year: 2023, month: 1, day: 1))!
        let fallbackDate = Calendar.current.date(from: DateComponents(year: 2022, month: 12, day: 31))!

        let nonNilDate: Date? = specificDate
        let nilDate: Date? = nil

        // If the optional Date is not nil, the original value should be returned
        XCTAssertEqual(nonNilDate.or(fallbackDate), specificDate)

        // If the optional Date is nil, the specified fallback date should be returned
        XCTAssertEqual(nilDate.or(fallbackDate), fallbackDate)
    }
}
