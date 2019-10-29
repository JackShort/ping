//
//  UserSearchResultsTableViewCell.swift
//  Upto
//
//  Created by Jack Short on 9/7/16.
//  Copyright © 2016 Jack Short. All rights reserved.
//

import Foundation
import UIKit

class UserSearchResultsTableViewCell: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var addFriendButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var friendToAdd: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addFriendButton.isHidden = true
    }
    
    @IBAction func addFriend(_ sender: AnyObject) {
        print("should add \(friendToAdd)")
    }
}
