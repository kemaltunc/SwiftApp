//
//  APIRequest.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation
import Alamofire

extension URLRequestBuilder {
    
    func execute<T : Codable>(_ decoder: T.Type, _ callback : @escaping (_ callback:Result<T>)->()){
        request(self).validate().responseData{ (response) in
            
            if let data = response.result.value {
                let dataString = String(data: data, encoding: String.Encoding.utf8)!
                print("\nData\n\n\(dataString)")
            }
            
            switch (response.result) {
            case .success:
                if let data = response.data {
                    do {
                        let response = try JSONDecoder().decode(T.self, from: data)
                        callback(Result.success(response))
                    } catch {
                        callback(Result.failure(Error(code: 101, message: error.localizedDescription)))
                    }
                }
            case .failure(let error):
                callback(Result.failure(Error(code: response.response?.statusCode, message: error.localizedDescription)))
            }
            
        }
    }
}
