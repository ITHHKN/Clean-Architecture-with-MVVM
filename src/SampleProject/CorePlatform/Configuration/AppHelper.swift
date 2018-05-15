//
//  AppHelper.swift
//  SampleProject
//
//  Created by Hasnain on 3/21/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//


import UIKit
import Foundation

public struct AppHelper {
  
  // App related properties
  static let appDelegate = UIApplication.shared.delegate as! AppDelegate
  static let userDefaults = UserDefaults.standard
 


  // Return network connectivity state true/false
  static func isConnectedToNetwork() -> Bool {
    let status = Reach().connectionStatus()
    switch status {
    case .unknown, .offline:
      //print("Not connected")
      return false
    case .online(.wwan):
      //print("Connected via WWAN")
      return true
    case .online(.wiFi):
      //print("Connected via WiFi")
      return true
    }
  }
}
