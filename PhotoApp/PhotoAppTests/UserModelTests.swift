//
//  UserModelTests.swift
//  PhotoAppTests
//
//  Created by 윤병일 on 2022/07/04.
//

import XCTest
@testable import PhotoApp

class UserModelTests: XCTestCase {

  override func setUp() {
    print("\n")
    print("setUp")
  }
  
  override func tearDown() {
    print("Tear down")
    print("\n")
  }
  
  func testD() {
    print("Running Test D")
    XCTFail("Always failing unit test") // fail
  }
  
  func testC() {
    print("Running Test C")
  }
  
  func skip_testB() { // skip 할 수 있는 방법
    print("Running Test B")
  }
  
  func testCar() {
    print("Running Test Car")
  }
  
  func testA() {
    print("Running Test A")
  }

  
  func testABCD() {
    print("Running Test ABCD")
  }
}
