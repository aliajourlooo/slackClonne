//
//  ChannelVC.swift
//  
//
//  Created by shahin miraftabi on 2/2/19.
//

import UIKit

class ChannelVC: UIViewController {
    
    //MARK: OUTLETS

    @IBOutlet weak var channelTableView: UITableView!
    @IBOutlet weak var loginBtn: UIButton!
    
    //UNWIND
    @IBAction func unwindToChannelVC (segue : UIStoryboardSegue)
    {}
    
    //MARK: Variables
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        loginBtn.addTarget(self, action: #selector(loginBtnPressed), for: UIControl.Event.touchUpInside)
        configureSWReveal()
        
        
    }
    
    @objc func loginBtnPressed ()
    {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    //MARK: functions
    func configureSWReveal()
    {
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 70
        
    }
    

   

}
