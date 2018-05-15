//
//  AppLayout.swift
//  SampleProject
//
//  Created by Hasnain on 3/21/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit
import Foundation


public class AppLayout: NSObject {
  
  public static let accentColor: UIColor = UIColor(red:0.141, green:0.384, blue:0.545, alpha:1)
  public static let navigationTintColor: UIColor = UIColor.white
  public static let navigationTitleColor: UIColor = UIColor.white
  
  
  public static func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
    
    return UIColor(
      red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
      alpha: CGFloat(1.0)
    )
  }
  
  
}
