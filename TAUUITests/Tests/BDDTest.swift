//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Rodrigo Buendia Ramos on 7/22/20.
//  Copyright © 2020 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testThankYouMessageInBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "Seattle")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}
