# Easier CGRect
Making `CGRect` play nice with data storage and calculations is annoying. That's fixed with a simple extension.

## Installation

 1. Drag the file into your Xcode project.
 2. That's it.
 
 Or, you can use Swift Package Manager if your heart so desires.
 
## Usage

Directly access `NSNumber` values for `CGRect` properties without needing to write repetitive boilerplate code that converts `origin` and `size` values.


```swift
let bounds = CGRect.init(x: 10, y: 10, width: 100, height: 300)
    
// CGRect extension lets you retrieve an NSNumber for any x, y, width, or height value
let heightForCoreData: NSNumber = bounds.number(from: .height)
    
// CGSize extension lets you directly retrieve the number value as a calculated property
let heightFromCGSizeForCoreData: NSNumber = bounds.size.heightNumber
```
    
Directly access `Float` values for `CGRect` to quickly perform type-safe, value-guaranteed calculation. Again, without needing to write repetitive boilerplate code that converts `origin` and `size` values.

```swift
let frame = CGRect.init(x: 10, y: 10, width: 100, height: 300)
    
// CGRect extension lets you retrieve an Float for any x, y, width, or height value
let xForCalculation: Float = bounds.float(from: .x)
    
// CGPoint extension lets you directly retrieve the float value as a calculated property
let xFromCGPointForCoreData: Float = bounds.origin.xFloat
```
