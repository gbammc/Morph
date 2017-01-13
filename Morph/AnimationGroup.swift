//
//  AnimationGroup.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

open class AnimationGroup: CAAnimationGroup {
    
    // MARK: Attributes
    
    public let attribute: Attribute
    
    public var keyframeAnimations = [KeyframeAnimation]()
    
    public weak var layer: CALayer? {
        didSet {
            for animation in keyframeAnimations {
                animation.layer = layer
            }
        }
    }
    
    public var complectionAction: AnimationComplectionAction?
    
    // MARK: Lifecycle
    
    public init(attribute: Attribute) {
        self.attribute = attribute
        
        let animation = KeyframeAnimation(attribute: attribute)
        keyframeAnimations.append(animation)
        
        super.init()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Makers

public extension AnimationGroup {
    
    @discardableResult public func from(_ value: AnimationChainable) -> AnimationGroup {
        keyframeAnimations.last?.from(value)
        
        return self
    }
    
    @discardableResult public func to(_ value: AnimationChainable) -> AnimationGroup {
        keyframeAnimations.last?.to(value)
        
        return self
    }
    
    @discardableResult public func by(_ values: [AnyObject]) -> AnimationGroup {
        keyframeAnimations.last?.fromValue = nil
        keyframeAnimations.last?.toValue = nil
        keyframeAnimations.last?.by(values)
        
        return self
    }
    
    @discardableResult public func during(_ values: [NSNumber]) -> AnimationGroup {
        keyframeAnimations.last?.during(values)
        
        return self
    }
    
    @discardableResult public func `repeat`(_ count: Float) -> AnimationGroup {
        keyframeAnimations.last?.repeatCount = count
        
        return self
    }
    
    @discardableResult public func repeatInfinity() -> AnimationGroup {
        keyframeAnimations.last?.repeatCount = .greatestFiniteMagnitude
        
        return self
    }
    
    @discardableResult public func autoreverse() -> AnimationGroup {
        keyframeAnimations.last?.autoreverses = true
        
        return self
    }
}

// MARK: - Arrangement

public extension AnimationGroup {
    
    @discardableResult public func after(_ timeInterval: TimeInterval) -> AnimationGroup {
        let animation = keyframeAnimations.last!
        if keyframeAnimations.count > 1 {
            let penultAnimation = keyframeAnimations[keyframeAnimations.count - 2]
            
            animation.delay(penultAnimation.beginTime + penultAnimation.duration)
            animation.animate(timeInterval)
        }
        animation.animate(timeInterval)
        
        let nextAnimation = KeyframeAnimation(attribute: attribute)
        nextAnimation.layer = layer
        nextAnimation.fromValue = animation.toValue
        keyframeAnimations.append(nextAnimation)
        
        return self
    }
    
    @discardableResult public func delay(_ timeInterval: TimeInterval) -> AnimationGroup {
        let animation = keyframeAnimations.last!
        if keyframeAnimations.count > 1 {
            let penultAnimation = keyframeAnimations[keyframeAnimations.count - 2]
            
            animation.delay(penultAnimation.beginTime + penultAnimation.duration)
        } else {
            animation.delay(timeInterval)
        }
        
        return self
    }
    
    @discardableResult public func animate(_ timeInterval: TimeInterval) -> AnimationGroup {
        let animation = keyframeAnimations.last!
        if keyframeAnimations.count > 1 {
            let delay = max(animation.beginTime - CACurrentMediaTime(), 0)
            
            let penultAnimation = keyframeAnimations[keyframeAnimations.count - 2]
            animation.delay(penultAnimation.duration + delay)
        }
        animation.animate(timeInterval)
        
        return self
    }
    
}

// MARK: - Effects

public extension AnimationGroup {
    
    public var easeIn: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeIn
            return self
        }
    }
    
    public var easeInQuad: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInQuad
            return self
        }
    }
    
    public var easeOutQuad: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutQuad
            return self
        }
    }
    
    public var easeInOutQuad: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutQuad
            return self
        }
    }
    
    public var eaesInCubic: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.eaesInCubic
            return self
        }
    }
    
    public var easeOutCubic: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutCubic
            return self
        }
    }
    
    
    public var easeInOutCubic: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutCubic
            return self
        }
    }
    
    public var easeInQuart: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInQuart
            return self
        }
    }
    
    public var easeOutQuart: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutQuart
            return self
        }
    }
    
    public var easeInOutQuart: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutQuart
            return self
        }
    }
    
    public var easeInQuint: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInQuint
            return self
        }
    }
    
    public var easeOutQuint: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutQuint
            return self
        }
    }
    
    public var easeInOutQuint: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutQuint
            return self
        }
    }
    
    public var easeInSine: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInSine
            return self
        }
    }
    
    public var easeOutSine: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutSine
            return self
        }
    }
    
    public var easeInOutSine: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutSine
            return self
        }
    }
    
    public var easeInExpo: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInExpo
            return self
        }
    }
    
    public var easeOutExpo: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutExpo
            return self
        }
    }
    
    public var easeInOutExpo: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutExpo
            return self
        }
    }
    
    public var easeInCirc: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInCirc
            return self
        }
    }
    
    public var easeOutCirc: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutCirc
            return self
        }
    }
    
    public var easeInOutCirc: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutCirc
            return self
        }
    }
    
    public var easeInElastic: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInElastic
            return self
        }
    }
    
    public var easeOutElastic: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutElastic
            return self
        }
    }
    
    public var easeInOutElastic: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutElastic
            return self
        }
    }
    
    public var easeInBack: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInBack
            return self
        }
    }
    
    public var easeOutBack: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutBack
            return self
        }
    }
    
    public var easeInOutBack: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutBack
            return self
        }
    }
    
    public var easeInBounce: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInBounce
            return self
        }
    }
    
    public var easeOutBounce: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeOutBounce
            return self
        }
    }
    
    public var easeInOutBounce: AnimationGroup {
        get {
            _ = keyframeAnimations.last?.easeInOutBounce
            return self
        }
    }
    
}
