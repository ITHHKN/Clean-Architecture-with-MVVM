//
//  BaseTabbarViewController.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit

open class BaseTabbarViewController: UITabBarController, UITabBarControllerDelegate, UINavigationControllerDelegate {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.tabBar.tintColor = UIColor.black
        self.tabBar.isTranslucent = false
        
    }   
}
