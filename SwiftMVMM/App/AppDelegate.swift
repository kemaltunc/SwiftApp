//
//  AppDelegate.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 29.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import UIKit
import AlamofireNetworkActivityLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        NetworkActivityLogger.shared.startLogging()
        
        initStartScreen()
        
        return true
    }
    
    func initStartScreen() {
        let mainVC = PostVC(nibName: "PostVC", bundle: nil)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
    }

}

