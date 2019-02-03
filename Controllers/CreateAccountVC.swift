//
//  CreateAccountVC.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/2/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //MARK : OUTLETS
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var emaiilTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CreateAccountVC")
        // Do any additional setup after loading the view.
    }

    //MARK: Functions
    @IBAction func closeBtnPressed(_ sender: Any) {
        // we will use unwind
    }
    @IBAction func profileImageBtnPressed(_ sender: Any) {
    }
    @IBAction func generateColorBtnPressed(_ sender: Any) {
    
    }
    @IBAction func createAccountBtnPressed(_ sender: Any) {
    }
    
    // MARK: - Navigation

}
