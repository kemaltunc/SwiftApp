//
//  ServiceCallback.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation


enum Result<T>{
    case success(T)
    case failure(Error)
}


class Error{
    var code:Int?
    var message:String?
    init(code:Int?,message:String?) {
        self.code = code
        self.message = message
        
        print("Hata kodu= \(String(describing: code)) Hata mesajı = \(String(describing: message))")
    }
}
