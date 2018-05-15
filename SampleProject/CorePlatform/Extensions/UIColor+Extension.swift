//
//  UIColor+Extension.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit
import Foundation

extension UIColor {
    
    func toGrayscaleColor() -> UIColor
    {
        var red: CGFloat = 0
        var blue: CGFloat = 0
        var green: CGFloat = 0
        var alpha: CGFloat = 0
        if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            return UIColor(white: (0.299*red+0.587*green+0.114*blue), alpha: alpha)
        } else {
            return self
            
        }
        
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    class func primaryColor()->UIColor{
        return UIColor(netHex: 0x27B8C5)
    }
    
    class func textRedColor()->UIColor{
        return UIColor(netHex: 0xF91A1D)
    }
    
    class func secondaryColor()->UIColor{
        return UIColor(netHex: 0x0a1d2e)
    }
    
    class func backgroundColor()->UIColor{
        return UIColor(netHex: 0xecebea)
    }
    
    class func lightColor() -> UIColor {
        return UIColor(netHex: 0xffffff)
    }
    
    class func destructiveColor() -> UIColor{
        return UIColor(netHex: 0xE9212D)
    }
    
    class func textColor()->UIColor{
        return UIColor(netHex: 0x737476)
    }
    
    class func barTintColor()->UIColor{
        return UIColor(netHex: 0x27B8C5)
    }
    
    class func actionColor()->UIColor{
        return UIColor(netHex: 0x1677BC)
    }
    
    class func alertColor()->UIColor{
        return UIColor(netHex: 0xfa903a)
    }
    
    class func dismissColor()->UIColor{
        return UIColor(netHex: 0x3598db)
    }
    
    class func defaultSeparatorColor() -> UIColor{
        return UIColor(netHex: 0xc7c6cd)
    }
    
    class func masterViewBackgroundColor()->UIColor{
        return UIColor(netHex: 0x091D2E)
    }
    
    
    class func appBackgroundColor(_ backgroundImage:UIImage = UIImage(named: "bg")!)->UIColor{
        return UIColor.init(patternImage: backgroundImage)
    }
    class func navigationBarTintColor() -> UIColor{
        return UIColor.primaryColor()
    }
    class func navigationTintColor() -> UIColor{
        return UIColor.lightColor()
    }
   
    var random: UIColor {
        let r = Int(arc4random_uniform(255))
        let g = Int(arc4random_uniform(255))
        let b = Int(arc4random_uniform(255))
        return UIColor(red: r, green: g, blue: b)
    }
  
 
}
