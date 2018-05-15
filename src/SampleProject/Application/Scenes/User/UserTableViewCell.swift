//
//  UserTableViewCell.swift
//  SampleProject
//
//  Created by Hasnain on 4/15/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit
import Kingfisher

final class UserTableViewCell: UITableViewCell {
  
  @IBOutlet weak var avatar: UIImageView!
  @IBOutlet weak var first_name: UILabel!
  @IBOutlet weak var last_name: UILabel!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  //
  // Configure each cell value
  //
  func fill(entity: User,IndextPathRow : Int) {
    self.first_name.text = entity.first_name
    self.last_name.text = entity.last_name
    self.avatar.kf.setImage(with: URL(string: entity.avatar!))
    
  }
}
