//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit

extension UIUserInterfaceLayoutDirection: CustomStringConvertible {
    
    /// Extension-safe user layout direction for iOS 8
    public static let standardUserInterfaceLayoutDirection: UIUserInterfaceLayoutDirection = {
        
        guard #available(iOS 9.0, watchOS 2.0, *) else {
            
            return UIView.userInterfaceLayoutDirection(for: .unspecified)
            
        }
        
        
        let direction = NSParagraphStyle.defaultWritingDirection(forLanguage: nil)
        
        switch NSParagraphStyle.defaultWritingDirection(forLanguage: nil) {
            
        case .leftToRight:
            return .leftToRight
        case .rightToLeft:
            return .rightToLeft
        case .natural:
            guard let localization = Bundle.main.preferredLocalizations.first else {
                return .leftToRight
            }
            return NSLocale.characterDirection(forLanguage: localization) == .rightToLeft ? .rightToLeft : .leftToRight
        }
    }()
    
    public var description: String {
        switch self {
        case .leftToRight: return "Left-to-Right"
        case .rightToLeft: return "Right-to-Left"
        }
    }
    
    
}
