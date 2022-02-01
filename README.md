# DisplayCornerRadius

[![Swift Package Manager Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat)](https://github.com/apple/swift-package-manager)  
DisplayCornerRadius is a package inspired by [ScreenCorners](https://github.com/kylebshr/ScreenCorners) and it allows your views to match the rounding of the display. 

## Important

This package uses what seems to be a private API, but reversing the name should be pretty much enough to avoid App Review complaints. Please report back if your app got rejected for using this API. 

## Usage

```swift
roundedView.layer.cornerCurve = .continuous
(view.window?.effectiveDisplayCornerRadius).map { roundedView.layer.cornerRadius = $0 }
```

This package adds `displayCornerRadius` property to an instance of `UIScreen` that will always return actual corner radius of the display.  
  
The real bonus feature of this package is `effectiveDisplayCornerRadius` property added to `UIWindow` that gives you the corner radius depending on the context. For example, when you run your application in [Slide Over](https://support.apple.com/en-gb/guide/ipad/ipadfe7c65e9/ipados) or on an external monitor there's no need to match the rounding of the display.  

## Requirements
- iOS 13
- Swift 5.5
