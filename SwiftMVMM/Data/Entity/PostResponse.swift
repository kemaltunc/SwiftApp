//
//  PostModel.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation


struct PostResponse : Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
