//
//  CounterView.swift
//  water-remember
//
//  Created by Raghav Vashisht on 17/06/18.
//  Copyright © 2018 Raghav Vashisht. All rights reserved.
//

import UIKit

@IBDesignable
class CounterView: UIView {
    private struct Constants {
        static let numberOfGlasses = 8
        static let lineWidth: CGFloat = 5.0
        static let arcWidth: CGFloat = 76
        
        static var halfOfLineWidth: CGFloat {
            return lineWidth / 2
        }
    }
    
    @IBInspectable var counter: Int = 5
    @IBInspectable var outlineColor: UIColor = UIColor.blue
    @IBInspectable var counterColor: UIColor = UIColor.orange
    
    
    // An arc’s length in a unit circle (where the radius is 1.0) is the same as the angle’s measurement in radians. For example, looking at the diagram above, the length of the arc from 0º to 90º is π/2. To calculate the length of the arc in a real situation, take the unit circle arc length and multiply it by the actual radius.
    
    
    //  2π – end of arrow (3π/4) + point of arrow (π/4) = 3π/2
    

    
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        
        
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        
        let startAngle: CGFloat = 3 * .pi / 4
        let endAngle: CGFloat = .pi / 4
        
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - Constants.arcWidth/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        path.lineWidth = Constants.arcWidth
        counterColor.setStroke()
        path.stroke()

    }
}
