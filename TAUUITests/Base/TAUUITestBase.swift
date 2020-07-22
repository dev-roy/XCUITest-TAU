//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Rodrigo Buendia Ramos on 7/22/20.
//  Copyright © 2020 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func XCTAsyncAssert(_ element: XCUIElement) {
        let elementExists = element.waitForExistence(timeout: 10)
        if elementExists {
            XCTAssertTrue(element.exists)
        }
    }
}
