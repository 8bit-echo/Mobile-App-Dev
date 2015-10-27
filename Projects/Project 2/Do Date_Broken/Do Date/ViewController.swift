//
//  ViewController.swift
//  Do Date
//
//  Created by Matt Dickey on 10/25/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    var managedObjectContext = NSManagedObjectContext()
    var managedObject = NSManagedObject()
    
    @IBAction func undiwndSegue(segue: UIStoryboardSegue){}
    
    @IBOutlet weak var tableTasks: UITableView!

    //Satisfies UITableView Requirement
    func tableView(tableView: UITableView, numberOfRowsInSection: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        //cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].date
        //HOW DID I LINK THIS?
        
        return cell
    }
    
    // Swipe to Delete
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tableTasks.reloadData()
        }
    }
    
    
    
    // FUNCTION OVERRIDES
    override func viewDidAppear(animated: Bool) {
        self.tableTasks.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableTasks.reloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

