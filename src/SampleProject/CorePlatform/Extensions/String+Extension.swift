//
//  String.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit

extension String {
    
    var ls:String {
        let tableNameForTranslation = "Localization"
        let  languagesArray = UserDefaults.standard.value(forKey: "CurrentLanguages")
        
        if languagesArray == nil {
            
            let currentLanguageBundle = Bundle(path: Bundle.main.path(forResource: "ar", ofType: "lproj")!)
            
            return NSLocalizedString(self , tableName: tableNameForTranslation, bundle: currentLanguageBundle!, value: "", comment: "")
        } else {
            
            let langAr = languagesArray as! NSArray
            
            let currentLanguageBundle = Bundle(path: Bundle.main.path(forResource: langAr[0] as? String, ofType: "lproj")!)
            
            return NSLocalizedString(self , tableName: tableNameForTranslation, bundle: currentLanguageBundle!, value: "", comment: "")
        }
    }
  
  func isEmail() -> Bool {
    let regex = try! NSRegularExpression(pattern: "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$", options: [.caseInsensitive])
    return regex.firstMatch(in: self, options:[], range: NSMakeRange(0, utf16.count)) != nil
  }
}
