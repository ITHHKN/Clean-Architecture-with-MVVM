//
//  APICommunicationURLs.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//
import Foundation

open class APICommunicationURLs : NSObject {
 
  public static var baseURL: String {
    get {
      return "https://api.myjson.com"
    }
  }
  
internal static func getUserList() -> String {
    return String(format: "%@/bins/kw0ly",baseURL)
  }
}


