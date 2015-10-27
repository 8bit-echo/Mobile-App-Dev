//
//  DoDateList.swift
//  Do Date
//
//  Created by Matt Dickey on 10/26/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DoDateList {
    class var sharedInstance : DoDateList {
        struct Static {
            static let instance : DoDateList = DoDateList()
        }
        return Static.instance
    }


private let ITEMS_KEY = "DoDateItems"

func allItems() -> [DoDateItem] {
    var doDateDictionary = NSUserDefaults.standardUserDefaults().dictionaryForKey(ITEMS_KEY) ?? [:]
    let items = Array(doDateDictionary.values)
    return items.map({DoDateItem(deadline: $0["deadline"] as! NSDate, title: $0["title"] as! String,desc: $0["desc"] as! String, UUID: $0["UUID"] as! String!)}).sorted({(left: DoDateItem, right:DoDateItem) -> Bool in
        (left.deadline.compare(right.deadline) == .OrderedAscending)
    })
}

func addItem(item: DoDateItem) {
    var doDateDictionary = NSUserDefaults.standardUserDefaults().dictionaryForKey(ITEMS_KEY) ?? Dictionary()
    
    doDateDictionary[item.UUID] = ["deadline": item.deadline, "title": item.title, "desc": item.desc, "UUID": item.UUID]
    NSUserDefaults.standardUserDefaults().setObject(doDateDictionary, forKey: ITEMS_KEY)
    
    // create a corresponding local notification
    var notification = UILocalNotification()
    notification.alertBody = "Your assignment \"\(item.title)\" is due today!"
    notification.alertAction = "open"
    notification.fireDate = item.deadline
    notification.soundName = UILocalNotificationDefaultSoundName
    notification.userInfo = ["title": item.title, "UUID": item.UUID]
    
    UIApplication.sharedApplication().scheduleLocalNotification(notification)
}

func removeItem(item: DoDateItem) {
    for notification in UIApplication.sharedApplication().scheduledLocalNotifications as! [UILocalNotification]{
        if (notification.userInfo!["UUID"] as! String == item.UUID) {
            
            UIApplication.sharedApplication().cancelLocalNotification(notification)
            break
        }
    }
    
    if var doDateItems = NSUserDefaults.standardUserDefaults().dictionaryForKey(ITEMS_KEY) {
        doDateItems.removeValueForKey(item.UUID)
        NSUserDefaults.standardUserDefaults().setObject(doDateItems, forKey: ITEMS_KEY) // save/overwrite todo item list
    }
}
}
