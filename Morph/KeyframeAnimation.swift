//
//  KeyframeAnimation.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

open class KeyframeAnimation: CAKeyframeAnimation {
    
    // MARK: Attributes
    
    public weak var layer: CALayer?
    
    public let attribute:Attribute
    
    public var fromValue: AnyObject!
    
    public var toValue: AnyObject!
    
    public var functionBlock = keyframeAnimationFunctionLinear
    
    // MARK: Lifecycle
    
    public init(attribute: Attribute) {
        self.attribute = attribute
        
        super.init()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func from(value: AnimationChainable) -> KeyframeAnimation {
        
        
        return self
    }

}

// MARK: - Effects

public extension KeyframeAnimation {
    
    public var easeIn: KeyframeAnimation {
        get {
            _ = easeInQuad
            return self
        }
    }
    
    public var easeInQuad: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInQuad
            return self
        }
    }
    
    public var easeOutQuad: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutQuad
            return self
        }
    }
    
    public var easeInOutQuad: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutQuad
            return self
        }
    }
    
    public var eaesInCubic: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInCubic
            return self
        }
    }
    
    public var easeOutCubic: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutCubic
            return self
        }
    }
    
    
    public var easeInOutCubic: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutCubic
            return self
        }
    }
    
    public var easeInQuart: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInQuart
            return self
        }
    }
    
    public var easeOutQuart: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutQuart
            return self
        }
    }
    
    public var easeInOutQuart: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutQuart
            return self
        }
    }
    
    public var easeInQuint: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInQuint
            return self
        }
    }
    
    public var easeOutQuint: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutQuint
            return self
        }
    }
    
    public var easeInOutQuint: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutQuint
            return self
        }
    }
    
    public var easeInSine: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInSine
            return self
        }
    }
    
    public var easeOutSine: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutSine
            return self
        }
    }
    
    public var easeInOutSine: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutSine
            return self
        }
    }
    
    public var easeInExpo: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInExpo
            return self
        }
    }
    
    public var easeOutExpo: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutExpo
            return self
        }
    }
    
    public var easeInOutExpo: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutExpo
            return self
        }
    }
    
    public var easeInCirc: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInCirc
            return self
        }
    }
    
    public var easeOutCirc: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutCubic
            return self
        }
    }
    
    public var easeInOutCirc: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutCirc
            return self
        }
    }
    
    public var easeInElastic: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInElastic
            return self
        }
    }
    
    public var easeOutElastic: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutElastic
            return self
        }
    }
    
    public var easeInOutElastic: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutElastic
            return self
        }
    }
    
    public var easeInBack: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInBack
            return self
        }
    }
    
    public var easeOutBack: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutBack
            return self
        }
    }
    
    public var easeInOutBack: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutBack
            return self
        }
    }
    
    public var easeInBounce: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInBounce
            return self
        }
    }
    
    public var easeOutBounce: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseOutBounce
            return self
        }
    }
    
    public var easeInOutBounce: KeyframeAnimation {
        get {
            functionBlock = keyframeAnimationFunctionEaseInOutBounce
            return self
        }
    }
    
}

// MARK: - Utilities

fileprivate let FPS: Double = 60

fileprivate extension KeyframeAnimation {
    
    fileprivate func createValueArray() {
        if let fromValue: AnyObject = self.fromValue, let toValue: AnyObject = self.toValue {
            
        }
    }
    
    fileprivate func valueIsKind(of klass: AnyClass) -> Bool {
        return self.fromValue!.isKind(of: klass) && self.toValue!.isKind(of: klass)
    }
    
    fileprivate func rectArray(from xValues: [NSNumber], yValues: [NSNumber], widths: [NSNumber], heights: [NSNumber]) -> [CGRect] {
        
        assert(xValues.count == yValues.count && xValues.count == widths.count && xValues.count == heights.count)
        
        let countOfRects = xValues.count
        var values = [CGRect]()
        
        for i in 1..<countOfRects {
            let value = CGRect(x: CGFloat(xValues[i].doubleValue),
                               y: CGFloat(yValues[i].doubleValue),
                               width: CGFloat(widths[i].doubleValue),
                               height: CGFloat(heights[i].doubleValue))
            values.append(value)
        }
        
        return values
    }
    
    fileprivate func path(from xValues: [NSNumber], yValues: [NSNumber]) -> CGPath {
        
        assert(xValues.count > 0)
        
        let countOfPoints = xValues.count
        let path = CGMutablePath()
        var value = CGPoint(x: CGFloat(xValues[0].doubleValue),
                            y: CGFloat(yValues[0].doubleValue))
        path.move(to: value)
        
        for i in 1..<countOfPoints {
            value = CGPoint(x: CGFloat(xValues[i].doubleValue),
                            y: CGFloat(yValues[i].doubleValue))
            path.addLine(to: value)
        }
        
        return path
    }
    
    fileprivate func colorArray(from redValues: [NSNumber], greenValues: [NSNumber], blueValues: [NSNumber], alphaValues: [NSNumber]) -> [UIColor] {
        
        assert(redValues.count > 0)
        
        let countOfColors = redValues.count
        var values = [UIColor]()
        
        for i in 1..<countOfColors {
            let value = UIColor(red: CGFloat(redValues[i].doubleValue),
                                green: CGFloat(greenValues[i].doubleValue),
                                blue: CGFloat(blueValues[i].doubleValue),
                                alpha: CGFloat(alphaValues[i].doubleValue))
            values.append(value)
        }
        
        return values
    }
    
    fileprivate func valueArray(for startValue: CGFloat, endValue: CGFloat) -> [NSNumber] {
        let startValue = Double(startValue)
        let endValue = Double(endValue)
        
        let steps = Int(ceil(FPS * duration) + 2)
        var values = [NSNumber]()
        
        let increment = 1 / Double(steps - 1)
        var progress: Double = 0
        var v: Double = 0
        var value: Double = 0
        
        for _ in 0..<steps {
            v = functionBlock(duration * progress * 1000, 0, 1, duration * 1000)
            value = startValue + v * (endValue - startValue)
            values.append(NSNumber(value: value))
            progress += increment
        }
        
        return values
    }
    
    fileprivate func transformArray(from m11: [NSNumber], m12: [NSNumber], m13: [NSNumber], m14: [NSNumber],
                                    m21: [NSNumber], m22: [NSNumber], m23: [NSNumber], m24: [NSNumber],
                                    m31: [NSNumber], m32: [NSNumber], m33: [NSNumber], m34: [NSNumber],
                                    m41: [NSNumber], m42: [NSNumber], m43: [NSNumber], m44: [NSNumber]) -> [NSValue] {
        let numberOfTransform = m11.count
        var values = [NSValue]()
        
        for i in 1..<numberOfTransform {
            var value = CATransform3DIdentity
            value.m11 = CGFloat(m11[i].doubleValue)
            value.m12 = CGFloat(m12[i].doubleValue)
            value.m13 = CGFloat(m13[i].doubleValue)
            value.m14 = CGFloat(m14[i].doubleValue)
            
            value.m21 = CGFloat(m21[i].doubleValue)
            value.m22 = CGFloat(m22[i].doubleValue)
            value.m23 = CGFloat(m23[i].doubleValue)
            value.m24 = CGFloat(m24[i].doubleValue)
            
            value.m31 = CGFloat(m31[i].doubleValue)
            value.m32 = CGFloat(m32[i].doubleValue)
            value.m33 = CGFloat(m33[i].doubleValue)
            value.m34 = CGFloat(m34[i].doubleValue)
            
            value.m41 = CGFloat(m41[i].doubleValue)
            value.m42 = CGFloat(m42[i].doubleValue)
            value.m43 = CGFloat(m43[i].doubleValue)
            value.m44 = CGFloat(m44[i].doubleValue)
            
            values.append(NSValue(caTransform3D: value))
        }
        
        return values
    }
    
}
