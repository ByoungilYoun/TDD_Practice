//
//  AccountCenterForUITestUITests.swift
//  AccountCenterForUITestUITests
//
//  Created by 윤병일 on 2022/06/22.
//

import XCTest

class AccountCenterForUITestUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false

    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch() // 앱 런치
      
      let title = app.staticTexts["Log In"]
      XCTAssertTrue(title.exists, "Log in label not found") // 에러 메세지 작성
      
      let usernameField = app.textFields["Username"]
      XCTAssertTrue(usernameField.exists)
                
      usernameField.tap()
      usernameField.typeText("jimmy")
      
      let passwordSecureTextField = app.secureTextFields["Password"]
      XCTAssertTrue(passwordSecureTextField.exists)
      
      passwordSecureTextField.tap()
      passwordSecureTextField.typeText("1234")
      
      let button = app.buttons["Continue"]
      XCTAssertTrue(button.exists)
      
      button.tap()
      
      let accountLabel = app.staticTexts["Welcome, Youn!"]
      XCTAssertTrue(accountLabel.exists)
      
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
