//
//  Animatable.swift
//  Morph
//
//  Created by Alvin on 10/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

public extension UIView {
    
    /// Creates a AnimationAnimator to build up animations
    ///
    /// - Parameters:
    ///   - closure: scope within which you can build up animations which you wish to apply to the layer.
    ///   - completion: executed when the animation sequence ends.
    public func mr_startAnimations(_ closure: ((AnimationAnimator) -> Void), completion: AnimationComplection? = nil) {
        let animator = AnimationAnimator(view: self)
        closure(animator)
        animator.animate(completion: completion)
    }
    
}

public extension CALayer {
    
    /// Creates a AnimationAnimator to build up animations
    ///
    /// - Parameters:
    ///   - closure: scope within which you can build up animations which you wish to apply to the layer.
    ///   - completion: executed when the animation sequence ends.
    public func mr_startAnimations(_ closure: ((AnimationAnimator) -> Void), completion: AnimationComplection? = nil) {
        let animator = AnimationAnimator(layer: self)
        closure(animator)
        animator.animate(completion: completion)
    }
    
}

public protocol Animatable {
}

extension UIView: Animatable {
}

extension CALayer: Animatable {
}
