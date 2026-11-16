//
//  HatchelTests.swift
//  HatchelTests
//
//  Created by Denis-Michael Lux on 16.11.26.
//

import Foundation
import Testing

@testable import Hatchel

internal struct HatchelTests {
    @Test
    func bundleIdentifierIsStable() {
        #expect(Bundle.main.bundleIdentifier == "dev.hatchel.Hatchel")
    }
}
