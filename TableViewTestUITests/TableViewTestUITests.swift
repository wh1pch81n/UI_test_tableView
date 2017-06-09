//
//  TableViewTestUITests.swift
//  TableViewTestUITests
//
//  Created by Derrick Ho on 4/20/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import XCTest

class TableViewTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        do {
            let row0 = XCUIApplication().tables.cells.element(boundBy: 0)
                .firstMatch
            row0.tap()
            sleep(1)
            let indexPath = IndexPath(row: 0, section: 0)
            let vc = XCUIApplication().staticTexts[indexPath.description + "success"]
            XCTAssertEqual(vc.exists, true)
        }
        sleep(1)
        XCUIApplication().navigationBars.buttons.element(boundBy: 0).tap()
        
        do {
            let indexPath = IndexPath(row: 0, section: 0)
            let row0 = XCUIApplication().tables.cells
                .staticTexts[indexPath.description]
                .firstMatch
            row0.tap()
            let vc = XCUIApplication().staticTexts[indexPath.description + "success"]
            XCTAssertEqual(vc.exists, true)
        }
        
    }
    
}
