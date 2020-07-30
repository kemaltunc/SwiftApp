//
//  PostServices.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 29.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation
import Alamofire

enum PostAPI : URLRequestBuilder {
    
    case getPost
    
    func createAPI() -> (HTTPMethod, String, Parameters?) {
        
        _ = Parameters.init()
        
        switch self {
            
        case .getPost:
            return (.get, "todos" , nil)
        }
        
    }
    
}






