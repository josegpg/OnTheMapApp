//
//  CreateLocationResponse.swift
//  OnTheMap
//
//  Created by Jose Piñero on 1/27/16.
//  Copyright © 2016 José Piñero. All rights reserved.
//

import Foundation

class CreateLocationResponse {
    
    var createdAt : String!
    var objectId : String!
    
    convenience init?(dictionary: [String : AnyObject]) {
        
        self.init()
        
        if let createdAt = dictionary[ParseClient.JSONResponseKeys.CreatedAt] as? String {
            self.createdAt = createdAt
        } else { return nil }
        
        if let objectId = dictionary[ParseClient.JSONResponseKeys.ObjectId] as? String {
            self.objectId = objectId
        } else { return nil }
    }
}