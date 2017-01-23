# Morph

[![Version](https://img.shields.io/cocoapods/v/Morph.svg?style=flat)](http://cocoapods.org/pods/Morph) [![License](https://img.shields.io/cocoapods/l/Morph.svg?style=flat)](http://cocoapods.org/pods/Morph) [![Platform](https://img.shields.io/cocoapods/p/Morph.svg?style=flat)](http://cocoapods.org/pods/Morph) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) ![Xcode 8.2+](https://img.shields.io/badge/Xcode-8.2%2B-blue.svg) ![iOS 8.0+](https://img.shields.io/badge/iOS-8.0%2B-blue.svg) [![Language Swift 3](https://img.shields.io/badge/Language-Swift%203.0.1-orange.svg)](https://swift.org)

## Introduction

Morph wraps CoreAnimation with a nicer syntax to help you build up awesome animations.

## Demo

![demo](/Resources/demo.gif?raw=true)

To implement above layer effect, all you need to code:

```swift
// Radiation
radiation.mr_startAnimations(closure: { (animate) in
    animate.opacity.from(1).to(0).animate(duration)
    animate.scale.from(1).to(0).animate(duration)
    animate.center.from(fromPoint).to(toPoint).animate(duration)
}, completion: {
    radiation.removeFromSuperlayer()
})

// Background circle
circle.mr_startAnimations(closure: { (animate) in
    animate.scale.by([0.8, scale, scale]).during([0, 0.5, 1.0]).animate(duration)
    animate.opacity.from(0.5).to(0).animate(duration)
}, completion: {
    circle.removeFromSuperlayer()
})
```

Check out the __Morph iOS Examples__ to get more details.

## Installation

### Cocoapods

Morph is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "Morph"
```

### Carthage

You also can use [Carthage](https://github.com/Carthage/Carthage) to install Morph by adding that to your Cartfile:

```ruby
github "gbammc/Morph"
```

## Getting started

### Basic usage

```swift
// Compose your animations in here.
view.mr_startAnimations(closure: { (animate) in
    animate.x.to(100).animate(1)
    animate.backgroundColor
        .to(UIColor.red).after(0.4)
        .delay(0.2).to(UIColor.yellow).animate(0.4)
})
```

### Attributes

#### Basic attributes

| Attribute | keyPath |
|-----------|---------|
| bounds | bounds |
| size | bounds.size |
| origin | position |
| center | position |
| x | position.x |
| y | position.y |
| width | bounds.size.width |
| height | bounds.size.height |
| opacity | opacity |
| backgroundColor | backgroundColor |
| borderColor | borderColor |
| borderWidth | borderWidth |
| cornerRadius | cornerRadius |
| anchor | anchorPoint |
| path | position |

#### Advance attributes

| Attribute | keyPath | Description |
|-----------|---------|-------------|
| scale | transform.scale |  Idempotent |
| scaleX | transform.scale.x | Idempotent |
| scaleY | transform.scale.y | Idempotent |
| rotateX | transform.rotation.x | Accept degree value. Idempotent |
| rotateY | transform.rotation.y | Accept degree value. Idempotent |
| rotateZ | transform.rotation.z | Accept degree value. Idempotent |
| rotate | transform.rotation.z | The same as ```rotateZ``` |
| xOffset | position.x | Increase / decrease origin x by specific value |
| yOffset | position.y | Increase / decrease origin y by specific value |
| heightOffset | bounds.size.width | Increase / decrease width by specific value |
| widthOffset | bounds.size.height | Increase / decrease height by specific value |
| rotateOnPath | position | Animating along paths rotate to match the path tangent  |
| reverseRotateOnPath | position | Animating along paths rotate to match the path tangent and auto reverse |
| fillColor | fillColor | CAShapeLayer only |
| strokeColor | strokeColor | CAShapeLayer only |
| strokeStart | strokeStart | CAShapeLayer only |
| strokeEnd | strokeEnd | CAShapeLayer only |
| lineWidth | lineWidth | CAShapeLayer only |
| miterLimit | miterLimit | CAShapeLayer only |
| lineDashPhase | lineDashPhase | CAShapeLayer only |

#### Chaining Animations

An attribute should ended by __animate(duration)__ function.

```swift
animate.width.to(100).animate(1.0)
```

To chain an attribute with different values in different time can call __after(duration)__ function.

```swift
animate.x.to(50).after(1.0).to(200).animate(2.0)
```

To delay an animation call the __delay(duration)__ function.

```swift
// it will disappear in one second and appear again after two second delay
animate.opacity
    .to(0.0).after(1.0)
    .delay(2.0).to(1.0).animate(1.0)
```

#### Repeat and autoreverse

To repeat or autoreverse animations with the __repeat(times)__, __repeatInfinity()__ and __autoreverse()__ functions.

#### Use it like CAKeyframeAnimation

Below is an example of how to set values and key times like CAKeyframeAnimation.

```swift
animate.scale
	.by([0.8, 1, 1])
	.during([0, 0.5, 1.0])
	.animate(duration)

/* the same as:
CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
keyframeAnimation.values = @[ @0.0, @1.1, @1.0 ];
keyframeAnimation.keyTimes = @[ @0.0, @0.5, @1.0 ];
keyframeAnimation.duration = duration;
*/
```

### Debug

Set ```logEnable``` to ```true``` will print the animations details for you to debug.

```swift
animate.logEnable = true
```

## Credit

Thanks their incredible works!

[JHChainableAnimations](https://github.com/jhurray/JHChainableAnimations)

[Masonry](https://github.com/SnapKit/Masonry)

## License

Morph is available under the MIT license. See the LICENSE file for more info.
