//
//  UserViewController.swift
//  SampleProject
//
//  Created by Hasnain on 4/4/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//

import UIKit

class UserViewController: BaseViewController ,UITableViewDelegate ,UITableViewDataSource {
  
  //
  // Mark -- Properties
  //
  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  @IBOutlet weak var tableView: UITableView!
  
  //
  //Mark -- View model 
  //
  lazy var viewModel: UserViewModel = {
    return UserViewModel()
  }()

  //
  // Mark -- View Life Cycle
  //
  override  func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override  func viewDidLoad() {
    super.viewDidLoad()
    
      initView()// Init the static view
    initVM() /// fetch api for SampleProject news
    
  }
  
  
 private func initView(){
    
    tableView.estimatedRowHeight = 150
    tableView.rowHeight = UITableViewAutomaticDimension
    tableView.register(UINib(nibName: "UserTableViewCell",bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
  }
  
  private func initVM() {
    
    viewModel.reloadTableViewClosure = { [weak self] () in
      DispatchQueue.main.async {
        self?.tableView.reloadData()
      }
    }
   
    viewModel.initFetch()
  }
 
  
  //
  // MARK: Data Source
  //
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell else {
      fatalError("Cell not exists in storyboard")
    }
    
    let cellVM = viewModel.getCellViewModel( at: indexPath )
    cell.fill(entity: cellVM, IndextPathRow: indexPath.row)
    
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.numberOfCells
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150.0
  }
  //
  // MARK: Delegate
  //
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
}



