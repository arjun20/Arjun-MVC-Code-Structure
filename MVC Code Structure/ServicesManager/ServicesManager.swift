//
//  ServicesManager.swift
//  MVC Code Structure
//
//  Created by Arjun on 08/07/19.
//  Copyright © 2019 Arjun. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ServicesManager  {
    
    static let shared : ServicesManager = ServicesManager()
    private var reachability: NetworkReachabilityManager!
    
    var headers: [String: String] = [:]
    var body: String?
    var elapsedTime: TimeInterval?
    
    typealias ServicesManagerComplationBlock = (_ data :[String:AnyObject]?, _ error : Error?) -> Void
    
    enum Sections: Int {
        case headers, body
    }
    
   
    
    enum HTTPMethodType: Int {
        case POST = 0
        case GET
    }

    func requestAPI(url: String,parameters:[String:AnyObject]?,withErrorAlert  errorAlert: Bool = true,withLoader isLoder: Bool = true,debugLog isDebug :Bool = true,  httpmethodtype:HTTPMethodType, completion: ServicesManagerComplationBlock){
        
        let escapedAddress = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        var request = URLRequest(url: URL(string: escapedAddress)!)
        
        switch httpmethodtype {
        case .POST:
            request.httpMethod = "POST"
        case .GET :
            request.httpMethod = "GET"
        }
        
        
        
    }
    
    
}
