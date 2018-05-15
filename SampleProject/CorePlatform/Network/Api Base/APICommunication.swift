//
//  APICommunication.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//
import Foundation
import EVReflection
import Alamofire

public enum AuthenticationType : Int {
  case Normal
  case Authentic
}

public class APICommunication: NSObject {
  
  var allowCache : Bool = false
  var manager : Alamofire.SessionManager?
  
  public override init() {
    
    let memoryCacheCapacity = 50 * 1024 * 1024 // 50 Mb
    let diskCacheCapacity = 200 * 1024 * 1024 // 200 Mb
    let cache = URLCache(memoryCapacity: memoryCacheCapacity, diskCapacity: diskCacheCapacity, diskPath: "SampleProjectData")
    
    let configuration = URLSessionConfiguration.default
    let defaultHeaders = Alamofire.SessionManager.defaultHTTPHeaders
    
    configuration.httpAdditionalHeaders = defaultHeaders
    configuration.requestCachePolicy = .useProtocolCachePolicy
    if allowCache {
      configuration.urlCache = cache
    }
    configuration.timeoutIntervalForRequest = 20 //secs
    configuration.timeoutIntervalForResource = 20 //secs
    
    
    manager = Alamofire.SessionManager(configuration : configuration)
  }
}
