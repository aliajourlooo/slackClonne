//
//  AuthService.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/3/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation

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
    
}
