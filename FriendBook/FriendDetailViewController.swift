//
//  FriendDetailViewController.swift
//  FriendBook
//
//  Created by keerthi puthanaveedu on 12/23/15.
//  Copyright © 2015 keerthi puthanaveedu. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var birthdayLabel: UILabel!
    
        var name = "kat"
        var birthday = "Nov 8th"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.nameLabel.text = "\(self.name)'s birthday is:"
        self.birthdayLabel.text = self.birthday

    }


}
