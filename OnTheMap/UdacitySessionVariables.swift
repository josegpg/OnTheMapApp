//
//  UdacitySessionVariables.swift
//  OnTheMap
//
//  Created by Jose Piñero on 2/1/16.
//  Copyright © 2016 José Piñero. All rights reserved.
//

import Foundation

class UdacitySessionVariables : NSObject {
    
    /* Authentication state */
    var userInfo : UserInfoResponse?
    
    class func sharedInstance() -> UdacitySessionVariables {
        
        struct Singleton {
            static var sharedInstance = UdacitySessionVariables()
        }
        
        return Singleton.sharedInstance
    }
}