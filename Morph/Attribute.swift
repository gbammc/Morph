//
//  Attribute.swift
//  Morph
//
//  Created by Alvin on 09/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import Foundation

public enum Attribute {
    
    case none
    
    case bounds
    case size
    case origin
    case center
    case x
    case y
    case width
    case height
    case opacity
    case backgroundColor
    case borderColor
    case borderWidth
    case cornerRadius
    case scale
    case scaleX
    case scaleY
    case anchor
    case rotateX
    case rotateY
    case rotateZ
    case rotate
    case bezierPath
    
    case xOffset
    case yOffset
    case widthOffset
    case heightOffset
    
    case fillColor
    case strokeColor
    case strokeStart
    case strokeEnd
    case lineWidth
    case miterLimit
    case lineDashPhase
    
    public var keyPath: String {
        switch self {
        case .bounds:
            return "bounds"
        case .size:
            return "bounds.size"
        case .origin:
            return "position"
        case .center:
            return "position"
        case .x:
            return "position.x"
        case .y:
            return "position.y"
        case .width:
            return "bounds.size.width"
        case .height:
            return "bounds.size.height"
        case .opacity:
            return "opacity"
        case .backgroundColor:
            return "backgroundColor"
        case .borderColor:
            return "borderColor"
        case .borderWidth:
            return "borderWidth"
        case .cornerRadius:
            return "cornerRadius"
        case .scale:
            return "transform.scale"
        case .scaleX:
            return "transform.scale.x"
        case .scaleY:
            return "transform.scale.y"
        case .anchor:
            return "anchorPoint"
        case .rotateX:
            return "transform.rotation.x"
        case .rotateY:
            return "transform.rotation.y"
        case .rotateZ:
            return "transform.rotation.z"
        case .xOffset:
            return "position.x"
        case .yOffset:
            return "position.y"
        case .widthOffset:
            return "bounds.size.width"
        case .heightOffset:
            return "bounds.size.height"
        case .bezierPath:
            return "position"
        case .fillColor:
            return "fillColor"
        case .strokeColor:
            return "strokeColor"
        case .strokeStart:
            return "strokeStart"
        case .strokeEnd:
            return "strokeEnd"
        case .lineWidth:
            return "lineWidth"
        case .miterLimit:
            return "miterLimit"
        case .lineDashPhase:
            return "lineDashPhase"
        default:
            return ""
        }
    }
    
}
