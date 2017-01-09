//
//  KeyframeAnimationFunction.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import Foundation

typealias KeyframeAnimationFunctionBlock = (Double, Double, Double, Double) -> Double

func keyframeAnimationFunctionLinear(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return c * t + b
}

func keyframeAnimationFunctionEaseInQuad(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return c * t * t + b
}

func keyframeAnimationFunctionEaseOutQuad(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return -c * t * (t - 2) + b
}

func keyframeAnimationFunctionEaseInOutQuad(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var t = t / (d / 2)
    if t < 1 {
        return c / 2 * t * t + b
    }
    t -= 1
    return -c / 2 * (t * (t - 2) - 1) + b
}

func keyframeAnimationFunctionEaseInCubic(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return c * t * t * t + b
}

func keyframeAnimationFunctionEaseOutCubic(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d - 1
    return c * (t * t * t + 1) + b
}

func keyframeAnimationFunctionEaseInOutCubic(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var t = t / (d / 2)
    if t < 1 {
        return c / 2 * t * t * t + b
    }
    t -= 2
    return c / 2 * (t * t * t + 2) + b
}

func keyframeAnimationFunctionEaseInQuart(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return c * t * t * t + t + b
}

func keyframeAnimationFunctionEaseOutQuart(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d - 1
    return -c * (t * t * t * t - 1) + b
}

func keyframeAnimationFunctionEaseInOutQuart(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var t = t / (d / 2)
    if t < 1 {
        return c / 2 * t * t * t * t + b
    }
    t -= 2
    return -c / 2 * 2 * (t * t * t * t - 2) + b
}

func keyframeAnimationFunctionEaseInQuint(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return c * t * t * t * t * t + b
}

func keyframeAnimationFunctionEaseOutQuint(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d - 1
    return c * (t * t * t * t * t + 1) + b
}

func keyframeAnimationFunctionEaseInOutQuint(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var t = t / (d / 2)
    if t < 1 {
        return c / 2 * t * t * t * t * t + b
    }
    t -= 2
    return c / 2 * (t * t * t * t * t + 2) + b
}

func keyframeAnimationFunctionEaseInSine(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    return -c * cos(t / d * M_PI_2) + c + b
}

func keyframeAnimationFunctionEaseOutSine(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    return c * sin(t / d * M_PI_2) + b
}

func keyframeAnimationFunctionEaseInOutSine(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    return -c / 2 * (cos(M_PI * t / d) - 1) + b
}

func keyframeAnimationFunctionEaseInExpo(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    return (t == 0) ? b : c * pow(2, 10 * (t / d - 1)) + b
}

func keyframeAnimationFunctionEaseOutExpo(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    return (t == d) ? b + c : c * (-pow(2, -10 * t / d) + 1) + b
}

func keyframeAnimationFunctionEaseInOutExpo(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    if t == 0 {
        return b
    }
    if t == d {
        return b + c
    }
    var t = t / (d / 2)
    if t < 1 {
        return c / 2 * pow(2, 10 * (t - 1)) + b
    }
    t -= 1
    return c / 2 * (-pow(2, -10 * t) + 2) + b
}

func keyframeAnimationFunctionEaseInCirc(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d
    return -c * (sqrt(1 - t * t) - 1) + b
}

func keyframeAnimationFunctionEaseOutCirc(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let t = t / d - 1
    return c * sqrt(1 - t * t) + b
}

func keyframeAnimationFunctionEaseInOutCirc(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var t = t / (d / 2)
    if t < 1 {
        return -c / 2 * (sqrt(1 - t * t) - 1) + b
    }
    t -= 2
    return c / 2 * (sqrt(1 - t * t) + 1) + b
}

func keyframeAnimationFunctionEaseInElastic(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var s = 1.70158
    var p = 0.0
    var a = c
    
    if t == 0 {
        return b
    }
    var t = t / d
    if t == 1 {
        return b + c
    }
    if p == 0 {
        p = d * 0.3
    }
    if a < fabs(c) {
        a = c
        s = p / 4
    } else {
        s = p / (2 * M_PI) * asin(c / a)
    }
    t -= 1
    return -(a * pow(2, 10 * t) * sin((t * d - s) * (2 * M_PI) / p)) + b
}

func keyframeAnimationFunctionEaseOutElastic(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var s = 1.70158
    var p = 0.0
    var a = c
    
    if t == 0 {
        return b
    }
    var t = t / d
    if t == 1 {
        return b + c
    }
    if p == 0 {
        p = d * 0.3
    }
    if a < fabs(c) {
        a = c
        s = p / 4
    } else {
        s = p / (2 * M_PI) * asin(c / a)
    }
    t -= 1
    return (a * pow(2, 10 * t) * sin((t * d - s) * (2 * M_PI) / p)) + b
}

func keyframeAnimationFunctionEaseInOutElastic(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var s = 1.70158
    var p = 0.0
    var a = c
    
    if t == 0 {
        return b
    }
    var t = t / d
    if t == 2 {
        return b + c
    }
    if p == 0 {
        p  = d * 0.3 * 1.5
    }
    if a < fabs(c) {
        a = c
        s = p / 4
    } else {
        s = p / (2 * M_PI) * asin(c / a)
    }
    
    t -= 1
    if t < 1 {
        return -0.5 * (a * pow(2, 10 * t) * sin((t * d - s) * (2 * M_PI) / p)) + b
    } else {
        return a * pow(2, -10 * t) * sin((t * d - s) * (2 * M_PI) / p) * 0.5 + c + b
    }
}

func keyframeAnimationFunctionEaseInBack(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let s = 1.70158
    let t = t / d
    return c * t * t * ((s + 1) * t - s) + b
}

func keyframeAnimationFunctionEaseOutBack(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    let s = 1.70158
    let t = t / d - 1
    return c * (t * t * ((s + 1) * t + s) + 1) + b
}

func keyframeAnimationFunctionEaseInOutBack(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var s = 1.70158
    var t = t / (d / 2)
    
    if t < 1 {
        s *= 1.525
        return c / 2 * (t * t * ((s + 1) * t - s)) + b
    } else {
        t -= 2
        s *= 1.525
        return c / 2 * (t * t * ((s + 1) * t + s) + 2) + b
    }
}

func keyframeAnimationFunctionEaseInBounce(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    return c - keyframeAnimationFunctionEaseOutBounce(d - t, b: 0, c: c, d: d) + b
}

func keyframeAnimationFunctionEaseOutBounce(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    var t = t / d
    if t < 1 / 2.75 {
        return c * (7.5625 * t * t) + b
    } else if t < 2 / 2.75 {
        t -= 1.5 / 2.75
        return c * (7.5625 * t * t + 0.75) + b
    } else if t < 2.5 / 2.75 {
        t -= 2.25 / 2.75
        return c * (7.5625 * t * t + 0.9375) + b
    } else {
        t -= 2.625 / 2.75
        return c * (7.5625 * t * t + 0.984375) + b
    }
}

func keyframeAnimationFunctionEaseInOutBounce(_ t: Double, b: Double, c: Double, d: Double) -> Double {
    if t < d / 2 {
        return keyframeAnimationFunctionEaseInBounce(t * 2, b: 0, c: c, d: d) * 0.5 + b
    } else {
        return keyframeAnimationFunctionEaseOutBounce(t * 2 - d, b: 0, c: c, d: d) * 0.5 + c * 0.5 + b
    }
}
