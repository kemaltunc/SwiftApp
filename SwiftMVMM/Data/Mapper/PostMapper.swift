//
//  PostMapper.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation


extension PostResponse {
    func toPostItem() -> PostEntity {
        return PostEntity(userId: self.userId, id: self.id, title: self.title, completed: self.completed)
    }
}
