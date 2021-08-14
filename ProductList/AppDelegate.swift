//
//  AppDelegate.swift
//  JsonToList
//
//  Created by Abdurrahman Ali on 8/13/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        MockURLProtocol.configureMock()
        
        return true
    }
}
