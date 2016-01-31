//
//  ParseClient.swift
//  OnTheMap
//
//  Created by Jose Piñero on 1/26/16.
//  Copyright © 2016 José Piñero. All rights reserved.
//

import Foundation

class ParseClient : APIClient {
    
    var studentLocations : [StudentLocationResponse] = []
    var studentLocationId : String?
    
    override init() {
        super.init()
    }
    
    override func getCommonHeaders() -> [String : String] {
        return [
            "Accept" : "application/json",
            "Content-Type" : "application/json",
            "X-Parse-Application-Id" : Constants.AppId,
            "X-Parse-REST-API-Key" : Constants.ApiKey
        ]
    }
    
    override func getBaseUrl() -> String {
        return Constants.BaseURL
    }
    
    // MARK: - Shared Instance
    
    class func sharedInstance() -> ParseClient {
        
        struct Singleton {
            static var sharedInstance = ParseClient()
        }
        
        return Singleton.sharedInstance
    }
}