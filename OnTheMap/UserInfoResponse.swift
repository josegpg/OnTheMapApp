//
//  UserInfo.swift
//  OnTheMap
//
//  Created by Jose Piñero on 1/26/16.
//  Copyright © 2016 José Piñero. All rights reserved.
//

import Foundation

class UserInfoResponse {
    var firstName : String = ""
    var lastName : String = ""
    var accountID : String = ""
    
    init() {}
    
    convenience init?(dictionary: [String : AnyObject]) {
        
        self.init()
        
        if let accountDictionary = dictionary[UdacityClient.JSONResponseKeys.User] as? [String : AnyObject] {
            
            if let firstName = accountDictionary[UdacityClient.JSONResponseKeys.FirstName] as? String {
                self.firstName = firstName
            } else {return nil}
            
            if let lastName = accountDictionary[UdacityClient.JSONResponseKeys.LastName] as? String {
                self.lastName = lastName
            }
            
        } else { return nil }
    }
    
    func getFullName() -> String {
        return (firstName + " " + lastName)
    }
}