//
//  FirstViewController.swift
//  Roar
//
//  Created by Pascal Sturmfels on 3/14/16.
//  Copyright © 2016 1AM. All rights reserved.
//

import UIKit

class RoarNavigationController: UIViewController {
    var tableView: RoarTableViewController!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    //prepareForSegue is a standard swift function that is called whenever a 
    //view "segues" (transitions) to another view. In this example, 
    //we use this function to load the tableView – since the tableView is inside
    //of this view, the segue to the table view is an "Embed" segue.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Embed"
        {
            tableView = segue.destinationViewController as! RoarTableViewController
        }
    }
}

