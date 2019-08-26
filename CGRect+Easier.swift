//
//  CGRect+Easier.swift
//  Easier CGRect
//
//  Created by Sam Spencer on 8/26/19.
//  Copyright © 2019 Sam Spencer. All rights reserved.
//

import Foundation

extension CGRect {
    
    enum RectValues {
        case x
        case y
        case width
        case height
    }
    
    func number(from value: RectValues) -> NSNumber {
        switch value {
        case .x:
            return origin.xNumber
        case .y:
            return origin.yNumber
        case .width:
            return size.widthNumber
        case .height:
            return size.heightNumber
        }
    }
    
    func float(from value: RectValues) -> Float {
        switch value {
        case .x:
            return origin.xFloat
        case .y:
            return origin.yFloat
        case .width:
            return size.widthFloat
        case .height:
            return size.heightFloat
        }
    }
    
}

extension CGSize {
    
    /// A width value, as a float.
    var widthFloat: Float {
        get {
            let converted = Float(width)
            return converted
        }
    }
    
    /// A height value, as a float.
    var heightFloat: Float {
        get {
            let converted = Float(height)
            return converted
        }
    }
    
    /// A width value, as a number.
    var widthNumber: NSNumber {
        get {
            let number = NSNumber.init(value: widthFloat)
            return number
        }
    }
    
    /// A height value, as a number.
    var heightNumber: NSNumber {
        get {
            let number = NSNumber.init(value: heightFloat)
            return number
        }
    }
}

extension CGPoint {
    
    /// The x-coordinate of the point, as a float.
    var xFloat: Float {
        get {
            let converted = Float(x)
            return converted
        }
    }
    
    /// The y-coordinate of the point, as a float.
    var yFloat: Float {
        get {
            let converted = Float(y)
            return converted
        }
    }
    
    /// The x-coordinate of the point, as a number.
    var xNumber: NSNumber {
        get {
            let number = NSNumber.init(value: xFloat)
            return number
        }
    }
    
    /// The y-coordinate of the point, as a number.
    var yNumber: NSNumber {
        get {
            let number = NSNumber.init(value: yFloat)
            return number
        }
    }
    
}
