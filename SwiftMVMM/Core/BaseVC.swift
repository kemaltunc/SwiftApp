//
//  BaseVC.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import Foundation
import UIKit

class BaseVC <T:BaseVM>: UIViewController{
    
    var viewModel: T = T()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    func initUI(){
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
