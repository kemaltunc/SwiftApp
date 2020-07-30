//
//  PostVM.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation


import Foundation

class PostVM : BaseVM{
    let postRepository = PostRepository()
    
    let post = Observable<[PostEntity]>()
}

extension PostVM{
    
    func getPost(){
        postRepository.getPost(){ [weak self] result in
            if case .success(let data) = result {
                self?.post.value = data
            }
        }
    }
    
}
