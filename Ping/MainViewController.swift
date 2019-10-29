//
//  MainViewController.swift
//  Upto
//
//  Created by Jack Short on 8/30/16.
//  Copyright © 2016 Jack Short. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logout(_ sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: UINavigationController = storyboard.instantiateViewController(withIdentifier: "startUpViewController") as! UINavigationController
        present(vc, animated: false, completion: nil)
    }
}
