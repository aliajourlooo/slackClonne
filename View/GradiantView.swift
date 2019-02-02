//
//  GradiantView.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/2/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

@IBDesignable
class GradiantView: UIView {

    @IBInspectable var topColor : UIColor = #colorLiteral(red: 0.4961383939, green: 0.8390344381, blue: 0.8737943769, alpha: 1) {
        
        didSet{
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var buttomColor : UIColor = #colorLiteral(red: 0.965223968, green: 0.8970996737, blue: 0.5518687367, alpha: 1) {
        didSet {
            self.setNeedsFocusUpdate()
        }
    }
    
    override func layoutSubviews() {
        let gradiant = CAGradientLayer()
        gradiant.colors = [topColor.cgColor , buttomColor.cgColor]
        gradiant.startPoint = CGPoint(x: 0  ,  y: 0   )
        gradiant.endPoint = CGPoint(x: 1 , y: 1)
        gradiant.frame = self.bounds
        
        self.layer.insertSublayer(gradiant, at: 0)
        
    }

}
