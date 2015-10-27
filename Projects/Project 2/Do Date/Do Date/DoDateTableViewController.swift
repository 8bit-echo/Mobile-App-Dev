//
//  DoDateTableViewController.swift
//  
//
//  Created by Matt Dickey on 10/26/15.
//
//

import UIKit
import CoreData

class DoDateTableViewController: UITableViewController, UITableViewDelegate {
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){}
    
 
    var doDateItems: [DoDateItem] = []
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "refreshList", name: "doDateListShouldRefresh", object: nil)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        refreshList()

    }
    

    
    func refreshList() {
        doDateItems = DoDateList.sharedInstance.allItems()
        tableView.reloadData()
    }
    
    // MAKE AS MANY TABLE CELLS AS THERE ARE ASSIGNMENTS
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doDateItems.count
    }
 
    // ADD THE DATA TO THE TABLE CELL
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("doDateCell", forIndexPath: indexPath) as! UITableViewCell
        let doDateItem = doDateItems[indexPath.row] as DoDateItem
        
        cell.textLabel?.text = doDateItem.title as String!
        
        //CHANGE THE COLOR IF URGENT
        if (doDateItem.isOverdue) {
            cell.detailTextLabel?.textColor = UIColor.redColor()
        } else {
            cell.detailTextLabel?.textColor = UIColor.blackColor()
        }
        
        let dateFormatter = NSDateFormatter()
        //CHANGE THIS FORMAT AFTER CRITIQUE? CAUSING ISSUES WITH NOTIFICATION FIRE TIMES?
        dateFormatter.dateFormat = "'Due' MMM dd 'at' h:mm a"
        
        let descriptionString = "for \(doDateItem.desc)"
        cell.detailTextLabel?.text = "\(dateFormatter.stringFromDate(doDateItem.deadline)) \(descriptionString)"

        
        return cell
    }

    //ALL CELLS CAN BE EDITIED
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableViewButtons(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        let button = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: NSLocalizedString("Complete", comment: "Complete"), handler: { (rowAction, indexPath) -> Void in
            self.tableView(self.tableView!, commitEditingStyle: UITableViewCellEditingStyle.Delete, forRowAtIndexPath: indexPath)
        })
        button.backgroundColor = UIColor.greenColor()
        return [button]
    }
    
    //HANDLE DELETION OF PERSISTED DATA
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            var item = doDateItems.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            DoDateList.sharedInstance.removeItem(item)
        }
    }
}

