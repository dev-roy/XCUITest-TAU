//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Rodrigo Buendia Ramos on 7/22/20.
//  Copyright © 2020 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city \(city)") { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
            //app.textFields["city"].tap()
            //app.textFields["city"].typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled") { _ in
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thank You Message") { _ in
            XCTAsyncAssert(TAUScreen.thankYouMessage.element)
        }
    }
}
