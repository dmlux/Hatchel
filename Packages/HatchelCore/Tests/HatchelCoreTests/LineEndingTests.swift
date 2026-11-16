// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import HatchelCore
import Testing

internal struct LineEndingTests {
    @Test(arguments: [
        ("a\nb", LineEnding.lineFeed),
        ("a\r\nb", LineEnding.carriageReturnLineFeed),
        ("a\rb", LineEnding.carriageReturn),
        ("a\r\nb\nc", LineEnding.carriageReturnLineFeed),
    ])
    func detectsFirstLineEnding(text: String, expected: LineEnding) {
        #expect(LineEnding.detect(in: text) == expected)
    }

    @Test
    func returnsNilWithoutLineBreak() {
        #expect(LineEnding.detect(in: "no line break") == nil)
    }
}
