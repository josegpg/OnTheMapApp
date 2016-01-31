//
//  ParseConstants.swift
//  OnTheMap
//
//  Created by Jose Piñero on 1/26/16.
//  Copyright © 2016 José Piñero. All rights reserved.
//

import Foundation

extension ParseClient {
    
    // MARK: - Constants
    struct Constants {
        
        // MARK: Keys
        static let ApiKey : String = "QuWThTdiRmTux3YaDseUSEpUKo7aBYM737yKd4gY"
        static let AppId : String = "QrX47CA9cyuGewLdsL7o5Eb8iug6Em8ye0dnAbIr"
        
        // MARK: URLs
        static let BaseURL : String = "https://api.parse.com/1/classes/"
        
    }
    
    // MARK: - Methods
    struct Methods {
        
        static let StudentLocation = "StudentLocation"
        static let ModifyStudentLocation = "StudentLocation/{id}"
        
    }
    
    // MARK: - Parameter Keys
    struct ParameterKeys {
        
        static let Limit = "limit"
        static let Skip = "skip"
        static let Order = "order"
        static let Where = "where"
        static let UniqueKey = "uniqueKey"
        
    }
    
    // MARK: - JSON Body Keys
    struct JSONBodyKeys {
        
        static let UniqueKey = "uniqueKey"
        static let FirstName = "firstName"
        static let LastName = "lastName"
        static let MapString = "mapString"
        static let MediaUrl = "mediaURL"
        static let Latitude = "latitude"
        static let Longitude = "longitude"
        
    }
    
    // MARK: - JSON Response Keys
    struct JSONResponseKeys {
        
        // MARK: Get students location
        static let Results = "results"
        static let UniqueKey = "uniqueKey"
        static let FirstName = "firstName"
        static let LastName = "lastName"
        static let MapString = "mapString"
        static let MediaUrl = "mediaURL"
        static let Latitude = "latitude"
        static let Longitude = "longitude"
        static let ObjectId = "objectId"
        
        // MARK: Post students location
        static let CreatedAt = "createdAt"
        
        // MARK: Put students location
        static let UpdatedAt = "updatedAt"
        
    }
}