//
//  RoundButton.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/3/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var radios : CGFloat = 10 {
        didSet{
            self.layer.cornerRadius = radios
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func prepareForInterfaceBuilder() {
        self.prepareForInterfaceBuilder()
        setupView()
    }
    
    func setupView()
    {
        self.layer.cornerRadius = radios
    }
    

}
