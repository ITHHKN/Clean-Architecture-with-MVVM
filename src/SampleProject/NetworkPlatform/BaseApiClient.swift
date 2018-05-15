//
//  BaseApiClient.swift
//  SampleProject
//
//  Created by Hasnain on 4/18/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import Foundation


open class BaseApiClient : NSObject{
  
  
  static let baseApi = BaseApiClient()
  
  //
  // Base Type Objects
  //
  open var repository: Repository
  open var apiCommunication : APICommunication
  
  //
  // Service Type Objects
  //
  open var userService : UserService
  
  public override init() {
    
    self.apiCommunication = APICommunication.init()
    self.repository = Repository.init()
    

    //
    // Repository Type Object
    //
    self.userService = UserService()
  }
  
  
}

