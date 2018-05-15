//
//  BaseRespository.swift
//  SampleProject
//
//  Created by Hasnain on 4/19/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

//Repository Design Pattern in Swift + optional protocols + default parameter values
//https://medium.com/@frederikjacques/repository-design-pattern-in-swift-952061485aa
//https://www.hackingwithswift.com/example-code/language/how-to-make-optional-protocol-methods
//https://marcosantadev.com/getting-hurt-protocol-extensions-default-parameter-values/

import Foundation

protocol  BaseRepository {
  
  associatedtype T
  
  
  func Save<T>(url: String, paramsIfAny: [String: String], response:T.Type,
               completion: @escaping(_ result: BaseResponseForModels) -> Void) where T: BaseResponseForModels
  
  func Delete<T>(url: String, paramsIfAny: [String: String],response:T.Type,
                 completion: @escaping(_ result: BaseResponseForModels) -> Void) where T: BaseResponseForModels
  
  func fetch<T>(url: String, paramsIfAny: [String: String], response:T.Type,
                completion: @escaping(_ result: BaseResponseForModels) -> Void) where T: BaseResponseForModels
}


