//
//  Animatable.swift
//  Morph
//
//  Created by Alvin on 10/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import Foundation

public protocol Animatable {
}

extension UIView: Animatable {
}

extension CALayer: Animatable {
}

public extension UIView {
    
    public func mr_startAnimations(closure: ((AnimationAnimator) -> Void), completion: AnimationComplection? = nil) {
        let animator = AnimationAnimator(view: self)
        closure(animator)
        animator.animate(completion: completion)
    }
    
}

public extension CALayer {
    
    public func mr_startAnimations(closure: ((AnimationAnimator) -> Void), completion: AnimationComplection? = nil) {
        let animator = AnimationAnimator(layer: self)
        closure(animator)
        animator.animate(completion: completion)
    }
    
}
