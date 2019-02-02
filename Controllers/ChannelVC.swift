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
    
    
    //MARK: Variables
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        configureSWReveal()
        
        
    }
    
    //MARK: functions
    func configureSWReveal()
    {
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 70
        
    }
    

   

}
