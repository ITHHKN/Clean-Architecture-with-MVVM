//
//  Constants.swift
//  SampleProject
//
//  Created by Hasnain on 3/21/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//


import UIKit
import Foundation


class Constants{
  
  
  // Device constants
  static let kUUid = UIDevice.current.identifierForVendor!.uuidString
  static let kDeviceType = UIDevice.current.model
  static let kSystemVersion = UIDevice.current.systemVersion
  
  
  //REGEX
  struct REGEX {
    static var EMAIL = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    static var PHONE = "^((\\+)|(00))[0-9]{11,14}$"
    static var PASSWORD = "^(?=.*[A-Z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}"
    static var CAPITAL = "(?s)[^A-Z]*[A-Z].*"
    static var SPECIAL = "(?s)[^$@$#!%*?&]*[$@$#!%*?&].*"
    static var HASHTAG = ".*[^A-Za-z0-9].*"
  }
  
}
