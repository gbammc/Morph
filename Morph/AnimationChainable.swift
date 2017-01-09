//
//  AnimationChainable.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit

public protocol AnimationChainable: Any {
}

extension UInt: AnimationChainable {
}

extension Int: AnimationChainable {
}

extension Float: AnimationChainable {
}

extension Double: AnimationChainable {
}

extension CGFloat: AnimationChainable {
}

extension CGRect: AnimationChainable {
}

extension CGSize: AnimationChainable {
}

extension CGPoint: AnimationChainable {
}

extension UIColor: AnimationChainable {
}

extension UIBezierPath: AnimationChainable {
}

extension Array: AnimationChainable {
}
