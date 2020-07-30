//
//  Observable.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation

class Observable<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T? {
        didSet {
            updateData()
        }
    }
    
    init(_ value: T? = nil) {
        self.value = value
    }
    
    func updateData(){
        DispatchQueue.main.async { self.observe(listener: self.listener) }
    }
    
    func observe(listener: Listener?) {
        self.listener = listener
        if(value != nil){
            listener?(value!)
        }
        
    }
}
