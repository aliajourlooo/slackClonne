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
        
        let header = ["Content-Type" : "application/json; charser=utf-8"]
        let body : [String : Any] = ["email" : loweCaseEmail , "password" : password]
             
        Alamofire.request(URL_REGISTER, method: .post, parameters: body , encoding: JSONEncoding.default, headers: header).responseString { (dataResponse) in
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
}
