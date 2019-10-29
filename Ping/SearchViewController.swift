//
//  SearchViewController.swift
//  Upto
//
//  Created by Jack Short on 9/3/16.
//  Copyright © 2016 Jack Short. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController: UIViewController, UISearchControllerDelegate, UISearchResultsUpdating, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var searchController: UISearchController!
    
    var searchedUsername = ""
    var canAddUser: Bool = false
    var shouldStartIndicator = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchController = UISearchController(searchResultsController: nil)
        
        self.searchController.delegate = self
        self.searchController.searchResultsUpdater = self
        self.searchController.searchBar.delegate = self
        self.definesPresentationContext = true
        
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.dimsBackgroundDuringPresentation = false
        
        self.navigationItem.titleView = searchController.searchBar
        
        self.definesPresentationContext = true
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        searchedUsername = (searchController.searchBar.text?.lowercased())!
        canAddUser = false
        shouldStartIndicator = true
        
        tableView.reloadData()
        
        if !(searchController.searchBar.text?.isEmpty)! {
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserSearchResultsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "resultsCell") as! UserSearchResultsTableViewCell
        
        cell.usernameLabel.text = searchedUsername
        
        if canAddUser {
            cell.addFriendButton.isHidden = false
            cell.friendToAdd = searchedUsername
        } else {
            cell.addFriendButton.isHidden = true
        }
        
        if shouldStartIndicator {
            cell.activityIndicator.startAnimating()
        } else {
            cell.activityIndicator.stopAnimating()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
