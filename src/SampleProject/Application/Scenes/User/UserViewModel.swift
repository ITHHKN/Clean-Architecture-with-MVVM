//
//  UserViewModel.swift
//  SampleProject
//
//  Created by Hasnain on 4/10/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import Foundation

final class UserViewModel {
  
  private var userList: [User] = [User]()
  
  private var cellViewModels: [User] = [User]() {
    didSet {
      self.reloadTableViewClosure?()
    }
  }
  
  var reloadTableViewClosure: (()->())?
  
  var numberOfCells: Int {
    return cellViewModels.count
  }
  
  
  //
  // api request to fetch list of user's
  //
  func initFetch() {
    
    BaseApiClient.baseApi.userService.fetchUserList(){ (userEntity) in
      
      self.processFetchedUsers(users: userEntity.payload)
    }
  }
  
  // cache and process the user's list  and bind to model
  private func processFetchedUsers(users: [User] ) {
    
    self.userList = users // Cache
    
    var vms = [User]()
    
    for user in users {
      vms.append(createCellViewModel(entity: user))
    }
    
    self.cellViewModels = vms
  }
  
  /// if any need to perform extra calculations on object
  func createCellViewModel( entity: User) -> User {
    
    entity.first_name = entity.first_name?.uppercased()
    
    return entity
    
  }
  
  func getCellViewModel( at indexPath: IndexPath ) -> User {
    return cellViewModels[indexPath.row]
  }
  
  
}
