//
//  ModifyLocationResponse.swift
//  OnTheMap
//
//  Created by Jose Piñero on 1/27/16.
//  Copyright © 2016 José Piñero. All rights reserved.
//

import Foundation

class ModifyLocationResponse {
    
    var updatedAt : String!
    
    convenience init?(dictionary: [String : AnyObject]) {
        
        self.init()
        
        if let updatedAt = dictionary[ParseClient.JSONResponseKeys.UpdatedAt] as? String {
            self.updatedAt = updatedAt
        } else { return nil }
    }
}