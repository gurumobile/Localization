//
//  AppDelegate.swift
//  Languages
//
//  Created by AA on 9/26/16.
//  Copyright © 2016 AA. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        Localizer.DoTheExchange()
        
        return true
    }


}

