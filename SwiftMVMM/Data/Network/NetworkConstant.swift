//
//  NetworkConstants.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 29.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation


struct NetworkConstant {
    
    static let baseURL = "https://jsonplaceholder.typicode.com/"
    
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    enum ContentType: String {
        case json = "application/json"
    }
}
