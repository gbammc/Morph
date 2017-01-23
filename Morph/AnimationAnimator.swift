//
//  AnimationAnimator.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

public typealias AnimationComplection = () -> Void
public typealias AnimationComplectionAction = (Animatable, KeyframeAnimation) -> Void

open class AnimationAnimator {
    
    
    public let targetView: UIView?

    public let targetLayer: CALayer?
    
    public var animations = [AnimationGroup]()
    
    /// Indicate whether to print the infomation about the animation or not. Defaults is NO.
    public var logEnable = false
    
    /// Initializes a new `AnimationAnimator` object.
    ///
    /// - Parameter view: The view that will apply the animations.
    public init(view: UIView) {
        targetView = view
        targetLayer = nil
    }
    
    /// Initializes a new `AnimationAnimator` object.
    ///
    /// - Parameter layer: The layer that will apply the animations.
    public init(layer: CALayer) {
        targetView = nil
        targetLayer = layer
    }
    
}

// MARK: API

public extension AnimationAnimator {
    
    public func animate(completion: AnimationComplection? = nil) {
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        CATransaction.setCompletionBlock(completion)
        
        for group in animations {
            for animation in group.keyframeAnimations {
                animation.calculate()
                
                if logEnable {
                    log(animation)
                }
                
                targetView?.layer.add(animation, forKey: nil)
                targetLayer?.add(animation, forKey: nil)
            }
        }
        
        CATransaction.commit()
        
        for group in animations {
            for animation in group.keyframeAnimations {
                execute(group.complectionAction, animation: animation)
            }
        }
    }
    
}

fileprivate extension AnimationAnimator {
    
    fileprivate func execute(_ action: AnimationComplectionAction?, animation: KeyframeAnimation) {
        guard let action = action else {
            return
        }
        
        let delay = max(animation.beginTime - CACurrentMediaTime(), 0)
        
        if let targetView = targetView {
            DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: { [unowned targetView] in
                action(targetView, animation)
            })
        } else if let targetLayer = targetLayer {
            DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: { [unowned targetLayer] in
                CATransaction.begin()
                CATransaction.setDisableActions(true)
                
                action(targetLayer, animation)
                
                CATransaction.commit()
            })
        }
    }
    
    fileprivate func log(_ animation: KeyframeAnimation) {
        if let path = animation.toValue as? UIBezierPath {
            dump("keyPath: \(animation.keyPath ?? ""), currentPoint: \(path.currentPoint), duration: \(animation.duration)")
        } else if let fromValue = animation.fromValue, let toValue = animation.toValue {
            dump("keyPath: \(animation.keyPath ?? ""), fromValue: \(fromValue), toValue: \(toValue), duration: \(animation.duration)")
        } else {
            dump("keyPath: \(animation.keyPath ?? ""), values: \(animation.values), keyTimes: \(animation.keyTimes)")
        }
    }
    
}
