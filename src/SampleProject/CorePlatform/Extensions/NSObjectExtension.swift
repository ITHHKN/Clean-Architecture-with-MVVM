//
//  NSObjectExtension.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//
import Foundation
import Toaster

extension NSObject {
    func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
    func showProgressHud (message : String, duration: TimeInterval = Delay.short) {
        
        if !message.isEmpty{
            let appearance = ToastView.appearance()
            
            appearance.cornerRadius = 10
            
            Toast(text: message, delay: 0, duration: duration).show()
            
        }
    }
}

