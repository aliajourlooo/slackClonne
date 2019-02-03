//
//  AuthService.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/3/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    static let instance = AuthService()
    
    
    let defaults = UserDefaults.standard
    var auth_token : String  {
        
        get{
            return defaults.string(forKey: TOKEN_KEY) as! String
        }
        set{
            defaults.set(auth_token, forKey: TOKEN_KEY  )
        }
    }
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: IS_LOGGED_IN)
        }
        set {
            defaults.set(newValue, forKey: IS_LOGGED_IN )
        }
    }
    
    var userEmail : String  {
        
        get{
            return defaults.string(forKey: USER_EMAIL) as! String
        }
        set{
            defaults.set(auth_token, forKey: USER_EMAIL  )
        }
    }
    
    
    func registerUser (password : String , email :String , handler : @escaping complitionHandler )
    {
        
        let loweCaseEmail = email.lowercased()
        
        
        let body : [String : Any] = ["email" : loweCaseEmail , "password" : password]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body , encoding: JSONEncoding.default, headers: HEADER).responseString { (dataResponse) in
            if dataResponse.result.error == nil
            {
                
                print("this is our value  \(dataResponse.result.value)")
                handler(true)
            }else{
                handler(false)
                print(dataResponse.result.error as Any)
            }
        }
    }
    
    func loginUser (email : String , password : String , handler : @escaping complitionHandler){
        let lowerCaseEmail = email.lowercased()
        let body : [String : Any] = ["email" : lowerCaseEmail , "password" : password]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            if response.result.error == nil
            {
                //parsing data to pull out authToken and setting userDefualts
                guard let data = response.result.value as? [String:Any] else {return}
                if let email = data["user"] as? String {
                    self.userEmail = email
                }
                if let token = data["token"] as? String {
                    self.auth_token = token
                }
                
                handler(true)
            }else
            {
                print("error in login")
                handler(false)
            }
        }
    }/* end of function */
}
