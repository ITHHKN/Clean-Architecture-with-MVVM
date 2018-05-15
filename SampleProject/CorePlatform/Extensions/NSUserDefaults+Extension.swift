//
//  NSUserDefaults+Extension.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import Foundation


extension UserDefaults {
  
  
  //save the value for first time app launch
  func saveAppFirstLaunchStatus(_ value : Bool) {
    self.setValue(value, forKey: "IsSetBoolOnFirstLounch")
    self.synchronize()
  }
  
  // get the value for first time app launch
  func getAppFirstLaunchStatus() -> Bool {
    guard let status = self.value(forKey: "IsSetBoolOnFirstLounch")
      else { return false }
    return status as! Bool
  }
  
  
  // Mark -- App Device Token
  
  func saveDeviceToken(_ token : String) {
    self.setValue(token, forKey: "pushToken")
    self.synchronize()
  }

  func getDeviceToken() -> String {
    guard let token = self.value(forKey: "pushToken")
      else { return "" }
    return token as! String
  }
  
  
}
