//
//  Utilities.swift
//  slack_Clone
//
//  Created by shahin miraftabi on 2/2/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import Foundation


//MARK:urls
let BASE_URL = "https://chattychatchat14.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//MARK : Segues

let TO_LOGIN = "tologin"
let UNWIND_TO_CHANNEL =  "unwindToChannelVC"



//MARK: USER DEFUALTS
let TOKEN_KEY  = "auth"
let IS_LOGGED_IN =  "isLoggedIn"
let USER_EMAIL = "userEmail"

//MARK: Complition handler
typealias complitionHandler  = ((_ success :Bool) -> Void )


//MARK : headers

let HEADER = ["Content-Type" : "application/json; charser=utf-8"]
