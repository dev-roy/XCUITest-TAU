//
//  BDDTests.swift
//  TAUUITests
//
//  Created by Rodrigo Buendia Ramos on 7/22/20.
//  Copyright © 2020 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTests: TAUUITestBase {
    
    func testThankYouMessage() {
        givenAppIsReady()
        whenIEnter(city: "Seattle")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}
