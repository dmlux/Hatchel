// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

/// The character sequence that terminates a line of text.
public enum LineEnding: String, CaseIterable, Sendable {
    /// Line feed (`\n`), used on macOS, Linux and other Unix-like systems.
    case lineFeed = "\n"

    /// Carriage return followed by line feed (`\r\n`), used on Windows.
    case carriageReturnLineFeed = "\r\n"

    /// Carriage return (`\r`), used by classic Mac OS.
    case carriageReturn = "\r"

    /// Detects the line ending used by the first line break in the given text.
    ///
    /// - Parameter text: The text to inspect.
    /// - Returns: The detected line ending, or `nil` if the text contains no line break.
    public static func detect(in text: String) -> Self? {
        for character in text {
            switch character {
            case "\r\n":
                return .carriageReturnLineFeed

            case "\n":
                return .lineFeed

            case "\r":
                return .carriageReturn

            default:
                continue
            }
        }

        return nil
    }
}
