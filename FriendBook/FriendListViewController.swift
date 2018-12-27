//
//  FriendListViewController.swift
//  FriendBook
//
//  Created by keerthi puthanaveedu on 12/22/15.
//  Copyright © 2015 keerthi puthanaveedu. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
     let myFriends = ["Trinadh","Padma","Harsha","Keerthi","karthik"]
    
        var selectFriend = "keerthi"
    
    override func viewDidLoad() {
       
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = myFriends[indexPath.row]
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.selectFriend = myFriends[indexPath.row]
        self.performSegueWithIdentifier("friendListToFriendDetailSegue", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailViewController = segue.destinationViewController as!
        FriendDetailViewController
        detailViewController.name = self.selectFriend
        
        if self.selectFriend == "Trinadh"
        {
        detailViewController.birthday = "january 2nd"
            
        }
        else if self.selectFriend == "Padma"
        {
            detailViewController.birthday = "November 2nd"
        }
        else if self.selectFriend == "Harsha"
        {
            detailViewController.birthday = "september 23th"
        }
        else if self.selectFriend == "keerthi"
        {
            detailViewController.birthday = "November 8th"
        }
        else if self.selectFriend == "karthik"
        {
            detailViewController.birthday = "january 14th"
        }
    }

    }
    

