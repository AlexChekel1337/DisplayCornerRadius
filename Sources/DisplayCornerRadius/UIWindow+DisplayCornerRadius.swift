// Copyright 2022 Alexandr Chekel
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

#if canImport(UIKit)

import UIKit

public extension UIWindow {
    /// Effective display corner radius of the window. It is based on whether
    /// the current screen is main and whether window frame matches the screen
    /// size of the device. Will return `0` when window is in Slide Over mode or
    /// is displayed on external monitor.
    var effectiveDisplayCornerRadius: CGFloat {
        let isMainScreen = screen == UIScreen.main
        let isFullscreen = frame == screen.bounds

        if isMainScreen && isFullscreen {
            return screen.displayCornerRadius
        } else {
            // There's probably no point in getting the display corner radius
            // if window is not the same size as the screen
            // (e.g. app running in Slide Over) of if the application
            // is running on an external monitor
            return 0
        }
    }
}

#endif
