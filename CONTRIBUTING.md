# Contributing to Hatchel

Thanks for your interest in contributing! This guide covers what you need to get started.

## Requirements

- A Mac with Apple silicon running macOS 27 or later
- Xcode 27 or later
- [Homebrew](https://brew.sh) to install SwiftLint for the command line:
  `brew install swiftlint`

## Setup

1. Clone the repository.
2. Enable the shared Git hooks (once per clone):

   ```bash
   git config core.hooksPath .githooks
   ```

   The pre-commit hook checks staged Swift files with swift-format and SwiftLint
   and aborts the commit if there are any issues.
3. Open `Hatchel.xcodeproj` in Xcode. On the first build, Xcode asks you to trust
   the SwiftLint plugin. Choose **Trust & Enable**.

## Code style

- Formatting is defined in `.swift-format`. Format a file with:
  `swift format format -i <file>`
- Linting is defined in `.swiftlint.yml`. Violations show up as warnings in Xcode.
- Every Swift file starts with the MPL 2.0 license header. Xcode adds it
  automatically to new files.

## Before opening a pull request

- Build and run the tests (⌘U) and make sure there are no warnings.
- CI runs formatting, linting, the build and the unit tests on every pull request.
  All checks must pass.

## License

By contributing, you agree that your contributions are licensed under the
[Mozilla Public License 2.0](LICENSE).
