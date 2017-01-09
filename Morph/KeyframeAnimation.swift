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
    
    public var fromValue: Any?
    
    public var toValue: Any?
    
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
