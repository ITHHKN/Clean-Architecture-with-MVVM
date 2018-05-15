//
//  String.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//
import UIKit

extension Dictionary {
    
    mutating func merge<K, V>(_ dict: [K: V]){
        
        for (k, v) in dict {
            
            self.updateValue(v as! Value, forKey: k as! Key)
            
        }
    }
}
