//
//  CircleView.swift
//  CircleLoading
//
//  Created by Hiem Seyha on 4/5/17.
//  Copyright © 2017 seyha. All rights reserved.
//

import UIKit

class CircleView: UIView {

  override init(frame: CGRect) {
    super.init(frame:frame)
    
    setupView()
    
   
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder:aDecoder)
  }
  
  func setupView(){
   
    let boundCenter = CGRect(x: self.center.x - (self.frame.width / 3) / 2, y: self.center.y - (self.frame.height / 3) / 2, width: self.frame.width / 3, height: self.frame.width / 3)
    
    
    let r = CGRect(x: 100, y: 130, width: 100, height: 100)
    
    let g = CAGradientLayer()
    g.frame = r
    let c1 = UIColor(
      red: 151.0/255.0, green: 81.0/255.0, blue: 227.0/255.0, alpha: 1)
    let c2 = UIColor(
      red: 36.0/255.0, green: 176.0/255.0, blue: 233.0/255.0, alpha: 1)
    g.colors = [c1.cgColor, c2.cgColor]
    self.layer.addSublayer(g)

    
    
    let circleShape = CAShapeLayer()
    circleShape.path = UIBezierPath(ovalIn: boundCenter).cgPath
    circleShape.fillColor = UIColor.clear.cgColor
    circleShape.strokeStart = 0
    circleShape.strokeEnd = 0.9
    circleShape.lineWidth = 5
    circleShape.lineCap = kCALineCapRound
    circleShape.strokeColor = UIColor.black.cgColor
    
//    create gradient
    let colorGradient = CAGradientLayer()
    colorGradient.frame = boundCenter
//    colorGradient.startPoint = CGPoint(x: 0.0, y: 0.5)
//    colorGradient.endPoint = CGPoint(x: 1, y: 0.5)
    let colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
    colorGradient.colors = colors
    //colorGradient.locations = [0.0, 0.5]
   
    
//    circleShape.addSublayer(colorGradient)
    
    
    
    let circleShape2 = CAShapeLayer()
    circleShape2.path = UIBezierPath(ovalIn: boundCenter).cgPath
    circleShape2.fillColor = UIColor.clear.cgColor
    circleShape2.strokeStart = 0
    circleShape2.strokeEnd = 1
    circleShape2.lineWidth = 10
    circleShape2.strokeColor = UIColor.gray.cgColor

    //self.layer.addSublayer(circleShape2)

    self.layer.addSublayer(colorGradient)
    self.layer.addSublayer(circleShape)
    
//    let startAnimation = CABasicAnimation(keyPath: "strokeStart")
//    startAnimation.fromValue = -0.1
////    startAnimation.fromValue = -0.5
//    startAnimation.toValue = 1
//
//    let endAnimation = CABasicAnimation(keyPath: "strokeEnd")
//    endAnimation.fromValue = circleShape.presentation()?.strokeStart
//    endAnimation.toValue = 1
//    
//  
//    
//    let circleAnimationGroup = CAAnimationGroup()
//    
//    circleAnimationGroup.duration = 1.0
//    circleAnimationGroup.repeatCount = Float.infinity
//    circleAnimationGroup.animations = [startAnimation,endAnimation]
//    
//    circleShape.add(circleAnimationGroup, forKey: nil)
    
    
   
    
//    // Rotate animation
//    let rotateAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
//    
//   
//    rotateAnimation.values = [0, Double.pi, 2 * Double.pi]
//    
//    // Animation
//    let animation = CAAnimationGroup()
//    
//    animation.animations = [rotateAnimation]
//    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
//    animation.duration = 1.5
//    animation.repeatCount = HUGE
//    animation.isRemovedOnCompletion = false
//    
//    circleShape.add(animation, forKey: nil)
    
  }
  
}
