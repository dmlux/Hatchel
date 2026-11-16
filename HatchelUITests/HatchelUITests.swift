//
//  HatchelUITests.swift
//  HatchelUITests
//
//  Created by Denis-Michael Lux on 16.11.26.
//

import XCTest

internal final class HatchelUITests: XCTestCase {
    @MainActor
    func testLaunchShowsWindow() {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
        XCTAssertTrue(app.windows.firstMatch.waitForExistence(timeout: 5), "App should open a window on launch")
    }

    @MainActor
    func testLaunchPerformance() {
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
