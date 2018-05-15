//
//  NumberFormatter+Extension.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//
import UIKit

extension NumberFormatter {
    class func getNumberFormatter() -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.currency
        formatter.decimalSeparator = ","
        formatter.currencySymbol = ""
        formatter.maximumFractionDigits = 0
        
        return formatter
    }
    
    class func englishLocale() -> NumberFormatter {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: "EN")
        return numberFormatter
    }
}
