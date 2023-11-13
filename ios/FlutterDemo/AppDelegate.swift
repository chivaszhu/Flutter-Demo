//
//  AppDelegate.swift
//  FlutterDemo
//
//  Created by Chivas on 2023/11/13.
//

import UIKit
import Flutter
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var vc = ViewController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        
        let flutterVc = FlutterViewController(project: nil, initialRoute: "login", nibName: nil, bundle: nil)
        self.window?.rootViewController = flutterVc

        
        return true
    }

}

