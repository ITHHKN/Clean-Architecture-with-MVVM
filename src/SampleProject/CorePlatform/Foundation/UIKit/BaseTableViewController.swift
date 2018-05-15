//
//  BaseTableViewController.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit

open class BaseTableViewController: UITableViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
}
