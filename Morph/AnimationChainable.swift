//
//  AnimationChainable.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

public protocol AnimationChainable: Any {
    
    func boxValue() -> AnyObject
    
}

extension UInt: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSNumber(value: self)
    }
    
}

extension Int: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSNumber(value: self)
    }
    
}

extension Float: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSNumber(value: self)
    }
    
}

extension Double: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSNumber(value: self)
    }
    
}

extension CGFloat: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSNumber(value: Double(self))
    }
    
}

extension CGRect: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSValue(cgRect: self)
    }
    
}

extension CGSize: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSValue(cgSize: self)
    }
    
}

extension CGPoint: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return NSValue(cgPoint: self)
    }
    
}

extension NSNumber: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return self
    }
    
}

extension UIColor: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return self
    }
    
}

extension UIBezierPath: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return self
    }
    
}

extension Array: AnimationChainable {
    
    public func boxValue() -> AnyObject {
        return self as AnyObject
    }
    
}
