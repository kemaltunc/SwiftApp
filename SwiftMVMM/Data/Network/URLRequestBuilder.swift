//
//  URLRequestBuilder.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 29.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation
import Alamofire


protocol URLRequestBuilder: URLRequestConvertible {
    func createAPI() -> (HTTPMethod, String, Parameters?)
}

extension URLRequestBuilder {
    
    func asURLRequest() throws -> URLRequest {
        
        let (method,path,parameters) = createAPI()
        
        var mainURL: URL {
            return URL(string:  NetworkConstant.baseURL)!
        }
        
        var requestURL: URL {
            return mainURL.appendingPathComponent(path)
        }
        
        var urlRequest: URLRequest {
            var request = URLRequest(url: requestURL)
            request.httpMethod = method.rawValue
            return request
        }
        
        var encoding: ParameterEncoding {
            switch method {
            case .get:
                return URLEncoding.default
            default:
                return JSONEncoding.default
            }
        }
        
        var headers: HTTPHeaders {
            let header = HTTPHeaders()
            return header
        }
        
        return try encoding.encode(urlRequest, with: parameters)
    }
}

