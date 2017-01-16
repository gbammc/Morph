//
//  ViewController.swift
//  Morph iOS Examples
//
//  Created by Alvin on 16/01/2017.
//  Copyright © 2017 Alvin. All rights reserved.
//

import UIKit
import Morph

class ViewController: UIViewController {

    @IBOutlet weak var demoView: UIView!
    @IBOutlet weak var btnViewAnimate: UIButton!
    @IBOutlet weak var btnLayerAnimate: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateDemoView(_ sender: Any) {
        btnViewAnimate.isEnabled = false
        
        let oriFrame = demoView.frame
        
        demoView.mr_startAnimations(closure: { (animate) in
            
            animate.logEnable = true
            
            animate.xOffset.easeIn.to(200).animate(1)
            animate.rotate.delay(0.3).to(180).animate(0.4)
            animate.backgroundColor.to(UIColor.red).after(0.4).delay(0.2).to(UIColor.yellow).animate(0.4)
            animate.opacity.delay(1).to(0).animate(2)
            
        }, completion: {
            
            self.demoView.frame = oriFrame
            self.demoView.backgroundColor = .blue
            
            self.demoView.mr_startAnimations(closure: { (animate) in
                
                animate.opacity.to(1).animate(0.3)
                
            }, completion: {
                
                self.btnViewAnimate.isEnabled = true
                
            })
            
        })
    }
    
    @IBAction func animateLayer(_ sender: Any) {
        let scale: CGFloat = 1.3
        let duration: TimeInterval = 0.4
        
        // radiation
        do {
            let radiationLength: CGFloat = 9
            let radiationFromRadius = imageView.frame.size.width * 0.5 - radiationLength
            let radiationToRadius = imageView.frame.size.width * scale * 0.5
            
            for i in 0..<8 {
                let degree = CGFloat(M_PI_4) * CGFloat(i)
                let fromPoint = CGPoint(x: imageView.center.x + sin(degree) * radiationFromRadius,
                                        y: imageView.center.y + cos(degree) * radiationFromRadius)
                let toPoint = CGPoint(x: imageView.center.x + sin(degree) * radiationToRadius,
                                      y: imageView.center.y + cos(degree) * radiationToRadius)
                
                let radiationPath = UIBezierPath()
                radiationPath.move(to: .zero)
                radiationPath.addLine(to: CGPoint(x: 0, y: radiationLength))
                
                let radiation = CAShapeLayer()
                radiation.path = radiationPath.cgPath
                radiation.position = imageView.center
                radiation.strokeColor = UIColor.orange.cgColor
                radiation.transform = CATransform3DMakeRotation(-degree, 0, 0, 1)
                radiation.lineWidth = 2
                radiation.lineCap = kCALineCapRound
                
                view.layer.insertSublayer(radiation, at: 0)
                
                radiation.mr_startAnimations(closure: { (animate) in
                    animate.opacity.from(1).to(0).animate(duration)
                    animate.scale.from(1).to(0).animate(duration)
                    animate.center.from(fromPoint).to(toPoint).animate(duration)
                }, completion: { 
                    radiation.removeFromSuperlayer()
                })
            }
        }
        
        // circle
        do {
            let radius = imageView.frame.size.width
            
            let circle = CAShapeLayer()
            circle.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: radius, height: radius), cornerRadius: radius).cgPath
            circle.position = imageView.center
            circle.bounds = CGRect(x: 0, y: 0, width: radius, height: radius)
            circle.fillColor = UIColor.yellow.cgColor
            
            view.layer.insertSublayer(circle, at: 0)
            
            circle.mr_startAnimations(closure: { (animate) in
                animate.scale.by([0.8, scale, scale]).during([0, 0.5, 1.0]).animate(duration)
                animate.opacity.from(0.5).to(0).animate(duration)
            }, completion: { 
                circle.removeFromSuperlayer()
            })
        }
    }
    
}

