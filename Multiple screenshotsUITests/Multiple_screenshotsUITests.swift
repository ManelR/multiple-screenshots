//
//  Multiple_screenshotsUITests.swift
//  Multiple screenshotsUITests
//
//  Created by Manel Roca on 21/5/23.
//

import XCTest

final class Multiple_screenshotsUITests: XCTestCase {

    override func setUpWithError() throws {
        let app = XCUIApplication()
        setupSnapshot(app, waitForAnimations: false)
        app.launch()
        
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_All_Scenes_Screenshots() throws {
        let app = XCUIApplication()
        app.launch()

        if app.buttons["btn_first_next"].exists {
            snapshot("01_first_scene")
            // Next scene
            app.buttons["btn_first_next"].tap()
            
            if app.buttons["btn_second_next"].exists {
                snapshot("02_second_scene")
                // Next scene
                app.buttons["btn_second_next"].tap()
                snapshot("03_last_scene")
            }
        }
    }
}
