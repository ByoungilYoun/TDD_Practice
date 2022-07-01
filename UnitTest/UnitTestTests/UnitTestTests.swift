//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by 윤병일 on 2022/07/01.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {
  
  func testAddStuff() {
    let math = MathStuff()
    
    let result = math.addNumbers(x: 1, y: 2)
    XCTAssertEqual(result, 3)
    
//    XCTAssertTrue(something) 여러가지 함수 제공
//    XCTAssertFalse(<#T##expression: Bool##Bool#>)
//    XCTAssertNil(<#T##expression: Any?##Any?#>)
//    XCTAssertNotNil(<#T##expression: Any?##Any?#>)
  }
  
  func testMultiplyStuff() {
    let math = MathStuff()
    
    let result = math.multiplyNumbers(x: 2, y: 1)
    XCTAssertEqual(result, 2)
  }
  
  
  func testdivideStuff() {
    let math = MathStuff()
    
    let result = math.divideNumbers(x: 10, y: 2)
    XCTAssertEqual(result, 5)
  }
}
