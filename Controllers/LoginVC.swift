//
//  LoginVC.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/2/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK: OUTLETS
    
    @IBOutlet weak var userNameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: functions
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        
        let vc = UIStoryboard(name: "CreateAccountVC", bundle: nil)
        guard let x = vc.instantiateInitialViewController() else {return}
        self.present(x, animated: true)
        
    }
    
    
}
