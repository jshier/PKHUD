//
//  PKHUDAnimation.swift
//  PKHUD
//
//  Created by Piergiuseppe Longo on 06/01/16.
//  Copyright © 2016 Piergiuseppe Longo, NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import Foundation
import QuartzCore

public final class PKHUDAnimation {
    
    public static let discreteRotation: CAAnimation = {
        let animation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        animation.values = (0...12).map { NSNumber(value: Double(Double($0) * Double.pi / 6.0)) }
        animation.keyTimes = (0...12).map { NSNumber(value: Double(Double($0) / 12.0)) }
        animation.duration = 1.2
        animation.calculationMode = "discrete"
        animation.repeatCount = .infinity
        return animation
    }()
    
    
    public static let continuousRotation: CAAnimation = {
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.fromValue = 0
        animation.toValue = 2.0 * .pi
        animation.duration = 1.2
        animation.repeatCount = .infinity
        return animation
    }()
    
}
