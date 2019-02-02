//
//  ChatVC.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/2/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //MARK: OUTLETS
    
    @IBOutlet weak var menuBtn: UIButton!
    
    //MARK: Variable
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSWReveal()
        
    }
    
    
    
    
    //MARK: functions
    func configureSWReveal()
    {
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: UIControl.Event.touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    
    
    
}
