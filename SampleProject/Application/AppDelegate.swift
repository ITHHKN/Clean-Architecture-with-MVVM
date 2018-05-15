//
//  AppDelegate.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit
import Foundation
import XCGLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //
    // MARK: Inastance Variables
    //
  
    var window: UIWindow?
    var navigationController: BaseNavigationViewController?
  
    let SampleProjectLog = XCGLogger.default // logged instance
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
      
      configureAppSetting()// configure the application setting
     
        return true
    }
  
  // App related settings
  func configureAppSetting(){
    
    configureAppLog() // configure the logger for the app
    configureAppProperties() // Configure app related propertier
    applicationRooViewController() // App Root view controller
    
  }
  
  func configureAppLog(){
    
    SampleProjectLog.setup(level: .debug, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: "/SampleProject/Globals/logfile", fileLevel: .debug)
    
    SampleProjectLog.verbose("A verbose message, usually useful when working on a specific problem")
    SampleProjectLog.debug("A debug message")
    SampleProjectLog.info("An info message, probably useful to power users looking in console.app")
    SampleProjectLog.warning("A warning message, may indicate a possible error")
    SampleProjectLog.error("An error occurred, but it's recoverable, just info about what happened")
    SampleProjectLog.severe("A severe error occurred, we are likely about to crash now")
    
  }
  
  // configure the properties related to the app
  func configureAppProperties(){
  
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.backgroundColor = UIColor.white
    
    
    /*
     ** Screen will never dim or go to sleep while app is running,
     ** Set as the badge of the app icon in Springboard
     ** Intended for use on dark backgrounds for status bar style
     ** View should be forcely flipped when switching the device language to arabic
     */
    
    UIApplication.shared.isIdleTimerDisabled = true
    UIApplication.shared.applicationIconBadgeNumber = 0
    UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
    UIView.appearance().semanticContentAttribute = .forceLeftToRight // Handle the layout if iphone is arabic
  }
  
  // set the root view controller of the application
  func applicationRooViewController(){

    let rootViewController: UserViewController = UserViewController (nibName: "UserViewController", bundle: nil)
    self.navigationController = BaseNavigationViewController(rootViewController: rootViewController) as BaseNavigationViewController
    self.navigationController?.isNavigationBarHidden = true
    self.window?.rootViewController = self.navigationController
    self.window?.makeKeyAndVisible()

  }
  
  
  public static var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection {
        return UIApplication.shared.userInterfaceLayoutDirection
  }

  func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
    return [.portrait, .portraitUpsideDown]
  }

  
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

