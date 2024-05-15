//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by csuftitan on 12/4/23.
//

import XCTest
@testable import UnitTesting

final class UnitTestingTests: XCTestCase {
    
    var mathCalculations : MathCalculations!
    
    override func setUp() {
        mathCalculations = MathCalculations()
    }
    override func tearDown() {
        mathCalculations = nil
    }

    func testAddFive() throws {
        //Given -  Arrange
        var expected: Int = 0
        //When   -  Act
        expected = mathCalculations.addFive(number: 5)
        //Then   -  Assert
        
        XCTAssert(expected == 10)
        XCTAssertTrue(expected == 10)
        XCTAssertEqual(expected, 10, "addFive is crashing")
    }


}
