//
//  AnimationAnimator+Properties.swift
//  Morph
//
//  Created by Alvin on 23/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

public extension AnimationAnimator {
    
    public var bounds: AnimationGroup {
        get {
            let group = addAnimationGroup(.bounds)
            
            if let targetView = targetView {
                
                group.from(targetView.bounds)
                group.to(targetView.bounds)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let bounds = rectValue(for: animation)
                        
                        view.layer.bounds = bounds
                        view.bounds = bounds
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds)
                group.to(targetLayer.bounds)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let bounds = rectValue(for: animation)
                        
                        layer.bounds = bounds
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var size: AnimationGroup {
        get {
            let group = addAnimationGroup(.size)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.bounds.size)
                group.to(targetView.layer.bounds.size)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let size = sizeValue(for: animation)
                        
                        view.layer.bounds.size = size
                        view.bounds.size = size
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds.size)
                group.to(targetLayer.bounds.size)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let size = sizeValue(for: animation)
                        
                        layer.bounds.size = size
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var origin: AnimationGroup {
        get {
            let group = addAnimationGroup(.origin)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.bounds.origin)
                group.to(targetView.layer.bounds.origin)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let origin = pointValue(for: animation)
                        let position = newPosition(for: view.layer, origin: origin)
                        view.layer.position = position
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds.origin)
                group.to(targetLayer.bounds.origin)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let origin = pointValue(for: animation)
                        let position = newPosition(for: layer, origin: origin)
                        layer.position = position
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var center: AnimationGroup {
        get {
            let group = addAnimationGroup(.center)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.position)
                group.to(targetView.layer.position)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let point = pointValue(for: animation)
                        view.center = point
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.position)
                group.to(targetLayer.position)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let point = pointValue(for: animation)
                        layer.position = point
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var x: AnimationGroup {
        get {
            let group = addAnimationGroup(.x)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.position.x)
                group.to(targetView.layer.position.x)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let x = floatValue(for: animation)
                        view.layer.position.x = x
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.position.x)
                group.to(targetLayer.position.x)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let x = floatValue(for: animation)
                        layer.position.x = x
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var y: AnimationGroup {
        get {
            let group = addAnimationGroup(.y)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.position.y)
                group.to(targetView.layer.position.y)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let y = floatValue(for: animation)
                        view.layer.position.y = y
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.position.y)
                group.to(targetLayer.position.y)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let y = floatValue(for: animation)
                        layer.position.y = y
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var width: AnimationGroup {
        get {
            let group = addAnimationGroup(.width)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.bounds.width)
                group.to(targetView.layer.bounds.width)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let width = floatValue(for: animation)
                        view.bounds.size.width = width
                        view.layer.bounds.size.width = width
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds.width)
                group.to(targetLayer.bounds.width)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let width = floatValue(for: animation)
                        layer.bounds.size.width = width
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var height: AnimationGroup {
        get {
            let group = addAnimationGroup(.height)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.bounds.height)
                group.to(targetView.layer.bounds.height)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let height = floatValue(for: animation)
                        view.bounds.size.height = height
                        view.layer.bounds.size.height = height
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds.height)
                group.to(targetLayer.bounds.height)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let height = floatValue(for: animation)
                        layer.bounds.size.height = height
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var opacity: AnimationGroup {
        get {
            let group = addAnimationGroup(.opacity)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.opacity)
                group.to(targetView.layer.opacity)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let opacity = floatValue(for: animation)
                        view.layer.opacity = Float(opacity)
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.opacity)
                group.to(targetLayer.opacity)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let opacity = floatValue(for: animation)
                        layer.opacity = Float(opacity)
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var backgroundColor: AnimationGroup {
        get {
            let group = addAnimationGroup(.backgroundColor)
            
            if let targetView = targetView {
                
                group.from(targetView.backgroundColor!)
                group.to(targetView.backgroundColor!)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let color = colorValue(for: animation)
                        view.backgroundColor = color
                        view.layer.backgroundColor = color.cgColor
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(UIColor(cgColor: targetLayer.backgroundColor!))
                group.to(UIColor(cgColor: targetLayer.backgroundColor!))
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let color = colorValue(for: animation)
                        layer.backgroundColor = color.cgColor
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var borderColor: AnimationGroup {
        get {
            let group = addAnimationGroup(.borderColor)
            
            if let targetView = targetView {
                
                group.from(UIColor(cgColor: targetView.layer.borderColor!))
                group.to(UIColor(cgColor: targetView.layer.borderColor!))
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let color = colorValue(for: animation)
                        view.layer.borderColor = color.cgColor
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(UIColor(cgColor: targetLayer.borderColor!))
                group.to(UIColor(cgColor: targetLayer.borderColor!))
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let color = colorValue(for: animation)
                        layer.borderColor = color.cgColor
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var borderWidth: AnimationGroup {
        get {
            let group = addAnimationGroup(.borderWidth)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.borderWidth)
                group.to(targetView.layer.borderWidth)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let borderWidth = floatValue(for: animation)
                        view.layer.borderWidth = borderWidth
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.borderWidth)
                group.to(targetLayer.borderWidth)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let borderWidth = floatValue(for: animation)
                        layer.borderWidth = borderWidth
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var cornerRadius: AnimationGroup {
        get {
            let group = addAnimationGroup(.cornerRadius)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.cornerRadius)
                group.to(targetView.layer.cornerRadius)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let cornerRadius = floatValue(for: animation)
                        view.layer.cornerRadius = cornerRadius
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.cornerRadius)
                group.to(targetLayer.cornerRadius)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let cornerRadius = floatValue(for: animation)
                        layer.cornerRadius = cornerRadius
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var scale: AnimationGroup {
        get {
            let group = addAnimationGroup(.scale)
            
            if let targetView = targetView {
                
                let animation = group.keyframeAnimations.last!
                let transform = NSValue(caTransform3D: targetView.layer.transform)
                
                animation.from(transform)
                animation.to(transform)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let scale = floatValue(for: animation)
                        let oriTransform = view.layer.transform
                        
                        if fabs(oriTransform.m11 - scale) > .ulpOfOne ||
                            fabs(oriTransform.m22 - scale) > .ulpOfOne {
                            let scaledTransform = CATransform3DMakeScale(scale, scale, 1)
                            
                            view.layer.transform = CATransform3DConcat(oriTransform, scaledTransform)
                        }
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                let animation = group.keyframeAnimations.last!
                let transform = NSValue(caTransform3D: targetLayer.transform)
                
                animation.from(transform)
                animation.to(transform)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let scale = floatValue(for: animation)
                        let oriTransform = layer.transform
                        
                        if fabs(oriTransform.m11 - scale) > .ulpOfOne ||
                            fabs(oriTransform.m22 - scale) > .ulpOfOne {
                            let scaledTransform = CATransform3DMakeScale(scale, scale, 1)
                            
                            layer.transform = CATransform3DConcat(oriTransform, scaledTransform)
                        }
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var scaleX: AnimationGroup {
        get {
            let group = addAnimationGroup(.scaleX)
            
            if let targetView = targetView {
                
                let animation = group.keyframeAnimations.last!
                let transform = NSValue(caTransform3D: targetView.layer.transform)
                
                animation.from(transform)
                animation.to(transform)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let scale = floatValue(for: animation)
                        let oriTransform = view.layer.transform
                        
                        if fabs(oriTransform.m11 - scale) > .ulpOfOne {
                            let scaledTransform = CATransform3DMakeScale(scale, 1, 1)
                            
                            view.layer.transform = CATransform3DConcat(oriTransform, scaledTransform)
                        }
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                let animation = group.keyframeAnimations.last!
                let transform = NSValue(caTransform3D: targetLayer.transform)
                
                animation.from(transform)
                animation.to(transform)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let scale = floatValue(for: animation)
                        let oriTransform = layer.transform
                        
                        if fabs(oriTransform.m11 - scale) > .ulpOfOne {
                            let scaledTransform = CATransform3DMakeScale(scale, 1, 1)
                            
                            layer.transform = CATransform3DConcat(oriTransform, scaledTransform)
                        }
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var scaleY: AnimationGroup {
        get {
            let group = addAnimationGroup(.scaleY)
            
            if let targetView = targetView {
                
                let animation = group.keyframeAnimations.last!
                let transform = NSValue(caTransform3D: targetView.layer.transform)
                
                animation.from(transform)
                animation.to(transform)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let scale = floatValue(for: animation)
                        let oriTransform = view.layer.transform
                        
                        if fabs(oriTransform.m22 - scale) > .ulpOfOne {
                            let scaledTransform = CATransform3DMakeScale(1, scale, 1)
                            
                            view.layer.transform = CATransform3DConcat(oriTransform, scaledTransform)
                        }
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                let animation = group.keyframeAnimations.last!
                let transform = NSValue(caTransform3D: targetLayer.transform)
                
                animation.from(transform)
                animation.to(transform)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let scale = floatValue(for: animation)
                        let oriTransform = layer.transform
                        
                        if fabs(oriTransform.m22 - scale) > .ulpOfOne {
                            let scaledTransform = CATransform3DMakeScale(1, scale, 1)
                            
                            layer.transform = CATransform3DConcat(oriTransform, scaledTransform)
                        }
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var anchor: AnimationGroup {
        get {
            let group = addAnimationGroup(.anchor)
            
            if let targetView = targetView {
                
                let anchor = targetView.layer.anchorPoint
                group.from(anchor)
                group.to(anchor)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let anchor = pointValue(for: animation)
                        
                        guard anchor != view.layer.anchorPoint else {
                            return
                        }
                        
                        var newPoint = CGPoint(x: view.layer.bounds.width * anchor.x,
                                               y: view.layer.bounds.height * anchor.y)
                        var oldPoint = CGPoint(x: view.layer.bounds.width * view.layer.anchorPoint.x,
                                               y: view.layer.bounds.height * view.layer.anchorPoint.y)
                        
                        newPoint = newPoint.applying(view.transform)
                        oldPoint = oldPoint.applying(view.transform)
                        
                        let position = CGPoint(x: view.layer.position.x - oldPoint.x + newPoint.x,
                                               y: view.layer.position.y - oldPoint.y + newPoint.y)
                        
                        view.layer.position = position
                        view.layer.anchorPoint = anchor
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                let anchor = targetLayer.anchorPoint
                group.from(anchor)
                group.to(anchor)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let anchor = pointValue(for: animation)
                        
                        guard anchor != layer.anchorPoint else {
                            return
                        }
                        
                        var newPoint = CGPoint(x: layer.bounds.width * anchor.x,
                                               y: layer.bounds.height * anchor.y)
                        var oldPoint = CGPoint(x: layer.bounds.width * layer.anchorPoint.x,
                                               y: layer.bounds.height * layer.anchorPoint.y)
                        
                        newPoint = newPoint.applying(layer.affineTransform())
                        oldPoint = oldPoint.applying(layer.affineTransform())
                        
                        let position = CGPoint(x: layer.position.x - oldPoint.x + newPoint.x,
                                               y: layer.position.y - oldPoint.y + newPoint.y)
                        
                        layer.position = position
                        layer.anchorPoint = anchor
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var rotateX: AnimationGroup {
        get {
            let group = addAnimationGroup(.rotateX)
            
            if let targetView = targetView {
                
                let radians = atan2(targetView.transform.b, targetView.transform.a)
                let degrees = radians * (CGFloat(180) / .pi)
                group.from(degrees)
                group.to(degrees)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let value = floatValue(for: animation)
                        view.transform = CGAffineTransform(rotationAngle: value)
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                let radians = atan2(targetLayer.affineTransform().b, targetLayer.affineTransform().a)
                let degrees = radians * (CGFloat(180) / .pi)
                group.from(degrees)
                group.to(degrees)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let value = floatValue(for: animation)
                        layer.setAffineTransform(CGAffineTransform(rotationAngle: value))
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var rotateY: AnimationGroup {
        get {
            let group = addAnimationGroup(.rotateY)
            
            if let targetView = targetView {
                
                let radians = atan2(targetView.transform.b, targetView.transform.a)
                let degrees = radians * (CGFloat(180) / .pi)
                group.from(degrees)
                group.to(degrees)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let value = floatValue(for: animation)
                        view.transform = CGAffineTransform(rotationAngle: value)
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                let radians = atan2(targetLayer.affineTransform().b, targetLayer.affineTransform().a)
                let degrees = radians * (CGFloat(180) / .pi)
                group.from(degrees)
                group.to(degrees)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let value = floatValue(for: animation)
                        layer.setAffineTransform(CGAffineTransform(rotationAngle: value))
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var rotateZ: AnimationGroup {
        get {
            let group = addAnimationGroup(.rotateZ)
            
            if let targetView = targetView {
                targetView.layer.allowsEdgeAntialiasing = true
                
                let radians = atan2(targetView.transform.b, targetView.transform.a)
                let degrees = radians * (CGFloat(180) / .pi)
                group.from(degrees)
                group.to(degrees)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let value = floatValue(for: animation)
                        view.transform = CGAffineTransform(rotationAngle: value)
                    }
                }
                
            } else if let targetLayer = targetLayer {
                targetLayer.allowsEdgeAntialiasing = true
                
                let radians = atan2(targetLayer.affineTransform().b, targetLayer.affineTransform().a)
                let degrees = radians * (CGFloat(180) / .pi)
                group.from(degrees)
                group.to(degrees)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let value = floatValue(for: animation)
                        layer.setAffineTransform(CGAffineTransform(rotationAngle: value))
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var rotate: AnimationGroup {
        get {
            return rotateZ
        }
    }
    
    public var xOffset: AnimationGroup {
        get {
            let group = addAnimationGroup(.xOffset)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.position.x)
                group.to(targetView.layer.position.x)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let x = floatValue(for: animation)
                        view.layer.position.x = x
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.position.x)
                group.to(targetLayer.position.x)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let x = floatValue(for: animation)
                        layer.position.x = x
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var yOffset: AnimationGroup {
        get {
            let group = addAnimationGroup(.yOffset)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.position.y)
                group.to(targetView.layer.position.y)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let y = floatValue(for: animation)
                        view.layer.position.y = y
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.position.y)
                group.to(targetLayer.position.y)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let y = floatValue(for: animation)
                        layer.position.y = y
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var widthOffset: AnimationGroup {
        get {
            let group = addAnimationGroup(.widthOffset)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.bounds.width)
                group.to(targetView.layer.bounds.width)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let width = floatValue(for: animation)
                        view.bounds.size.width = width
                        view.layer.bounds.size.width = width
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds.width)
                group.to(targetLayer.bounds.width)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let width = floatValue(for: animation)
                        layer.bounds.size.width = width
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var heightOffset: AnimationGroup {
        get {
            let group = addAnimationGroup(.heightOffset)
            
            if let targetView = targetView {
                
                group.from(targetView.layer.bounds.height)
                group.to(targetView.layer.bounds.height)
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView {
                        let height = floatValue(for: animation)
                        view.bounds.size.height = height
                        view.layer.bounds.size.height = height
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                group.from(targetLayer.bounds.height)
                group.to(targetLayer.bounds.height)
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer {
                        let height = floatValue(for: animation)
                        layer.bounds.size.height = height
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var path: AnimationGroup {
        get {
            let group = addAnimationGroup(.bezierPath)
            
            if let targetView = targetView {
                
                targetView.layer.allowsEdgeAntialiasing = true
                group.complectionAction = { (view, animation) in
                    if let view = view as? UIView, let path = bezierPath(for: animation) {
                        view.layer.position = path.currentPoint
                    }
                }
                
            } else if let targetLayer = targetLayer {
                
                targetLayer.allowsEdgeAntialiasing = true
                group.complectionAction = { (layer, animation) in
                    if let layer = layer as? CALayer, let path = bezierPath(for: animation) {
                        layer.position = path.currentPoint
                    }
                }
                
            }
            
            return group
        }
    }
    
    public var rotateOnPath: AnimationGroup {
        get {
            let group = self.path
            group.keyframeAnimations.last?.rotationMode = kCAAnimationRotateAuto
            
            return group
        }
    }
    
    public var reverseRotateOnPath: AnimationGroup {
        get {
            let group = self.path
            group.keyframeAnimations.last?.rotationMode = kCAAnimationRotateAutoReverse
            
            return group
        }
    }
    
    public var fillColor: AnimationGroup {
        get {
            let group = addAnimationGroup(.fillColor)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(UIColor(cgColor: targetLayer.fillColor!))
                group.to(UIColor(cgColor: targetLayer.fillColor!))
                group.complectionAction = { (layer, animation) in
                    let value = colorValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.fillColor = value.cgColor
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
    public var strokeColor: AnimationGroup {
        get {
            let group = addAnimationGroup(.strokeColor)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(UIColor(cgColor: targetLayer.strokeColor!))
                group.to(UIColor(cgColor: targetLayer.strokeColor!))
                group.complectionAction = { (layer, animation) in
                    let value = colorValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.strokeColor = value.cgColor
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
    public var strokeStart: AnimationGroup {
        get {
            let group = addAnimationGroup(.strokeStart)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(targetLayer.strokeStart)
                group.to(targetLayer.strokeStart)
                group.complectionAction = { (layer, animation) in
                    let value = floatValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.strokeStart = value
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
    public var strokeEnd: AnimationGroup {
        get {
            let group = addAnimationGroup(.strokeEnd)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(targetLayer.strokeEnd)
                group.to(targetLayer.strokeEnd)
                group.complectionAction = { (layer, animation) in
                    let value = floatValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.strokeEnd = value
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
    public var lineWidth: AnimationGroup {
        get {
            let group = addAnimationGroup(.lineWidth)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(targetLayer.lineWidth)
                group.to(targetLayer.lineWidth)
                group.complectionAction = { (layer, animation) in
                    let value = floatValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.lineWidth = value
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
    public var miterLimit: AnimationGroup {
        get {
            let group = addAnimationGroup(.miterLimit)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(targetLayer.miterLimit)
                group.to(targetLayer.miterLimit)
                group.complectionAction = { (layer, animation) in
                    let value = floatValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.miterLimit = value
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
    public var lineDashPhase: AnimationGroup {
        get {
            let group = addAnimationGroup(.lineDashPhase)
            
            if let targetLayer = targetLayer as? CAShapeLayer {
                
                group.from(targetLayer.lineDashPhase)
                group.to(targetLayer.lineDashPhase)
                group.complectionAction = { (layer, animation) in
                    let value = floatValue(for: animation)
                    if let layer = layer as? CAShapeLayer {
                        layer.lineDashPhase = value
                    }
                }
                
            } else {
                fatalError("This attribut(\(group.attribute.keyPath)) should be used by CAShapeLayer")
            }
            
            return group
        }
    }
    
}

fileprivate extension AnimationAnimator {
    
    fileprivate func addAnimationGroup(_ attribute: Attribute) -> AnimationGroup {
        let group = AnimationGroup(attribute: attribute)
        
        if let targetView = targetView {
            
            group.layer = targetView.layer
            
        } else if let targetLayer = targetLayer {
            
            group.layer = targetLayer
            
        }
        
        animations.append(group)
        
        return group
    }
    
}

// MARK: - Helpers

fileprivate func newPosition(for layer: CALayer, origin: CGPoint) -> CGPoint {
    let anchor = layer.anchorPoint
    let size = layer.bounds.size
    let newPoisition = CGPoint(x: origin.x + anchor.x * size.width,
                               y: origin.y + anchor.y * size.height)
    return newPoisition
}

fileprivate func floatValue(for animation: KeyframeAnimation) -> CGFloat {
    var result: CGFloat = 0
    var value: NSNumber?
    
    if let toValue = animation.toValue as? NSNumber {
        value = toValue
    } else if let lastValue = animation.values?.last as? NSNumber {
        value = lastValue
    }
    
    if let value = value {
        result = CGFloat(value.doubleValue)
    }
    
    return result
}

fileprivate func sizeValue(for animation: KeyframeAnimation) -> CGSize {
    var result = CGSize.zero
    var value: NSValue?
    
    if let toValue = animation.toValue as? NSValue {
        value = toValue
    } else if let lastValue = animation.values?.last as? NSValue {
        value = lastValue
    }
    
    if let value = value {
        result = value.cgSizeValue
    }
    
    return result
}

fileprivate func pointValue(for animation: KeyframeAnimation) -> CGPoint {
    var result = CGPoint.zero
    var value: NSValue?
    
    if let toValue = animation.toValue as? NSValue {
        value = toValue
    } else if let lastValue = animation.values?.last as? NSValue {
        value = lastValue
    }
    
    if let value = value {
        result = value.cgPointValue
    }
    
    return result
}

fileprivate func rectValue(for animation: KeyframeAnimation) -> CGRect {
    var result = CGRect.zero
    var value: NSValue?
    
    if let toValue = animation.toValue as? NSValue {
        value = toValue
    } else if let lastValue = animation.values?.last as? NSValue {
        value = lastValue
    }
    
    if let value = value {
        result = value.cgRectValue
    }
    
    return result
}

fileprivate func colorValue(for animation: KeyframeAnimation) -> UIColor {
    var result = UIColor.white
    var value: UIColor?
    
    if let toValue = animation.toValue as? UIColor {
        value = toValue
    } else if let lastValue = animation.values?.last as? UIColor {
        value = lastValue
    }
    
    if let value = value {
        result = value
    }
    
    return result
}

fileprivate func bezierPath(for animation: KeyframeAnimation) -> UIBezierPath? {
    var result: UIBezierPath?
    
    if let toValue = animation.toValue as? UIBezierPath {
        result = toValue
    } else if let lastValue = animation.values?.last as? UIBezierPath {
        result = lastValue
    }
    
    return result
}
