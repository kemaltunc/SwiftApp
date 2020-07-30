//
//  PostRepositoryImp.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation
import Alamofire

struct PostRepository{
    
    func getPost(callback : @escaping (_ callback:Result<[PostEntity]>)->()) {
        PostAPI.getPost.execute([PostResponse].self){ result in
            switch result {
            case .success(let data):
                callback(Result.success(
                    data.map { item in
                        item.toPostItem()
                    }
                ))
            case .failure(let err):
                callback(Result.failure(err))
            }
            
        }
        
    }
    
}
