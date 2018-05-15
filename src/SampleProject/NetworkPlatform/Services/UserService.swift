//
//  SocialMediaService.swift
//  SampleProject
//
//  Created by Hasnain on 4/4/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import Foundation
import EVReflection


open class UserService : NSObject , NewsProtocols {
  
  //
  // Fetch user list 
  //
  open func fetchUserList(completionHandler: @escaping (_ users: userServiceResponse) -> Void){
    
    BaseApiClient.baseApi.repository.fetch(url: APICommunicationURLs.getUserList(), response: userServiceResponse.self) { (baseObject) in
      
      let responseEntity = baseObject as! userServiceResponse
      completionHandler(responseEntity)
    }
  }
}

//
// Response Model
//
open class userServiceResponse  : BaseResponseForModels {
  
  var payload = [User]()
  
  required public init() {}
}



