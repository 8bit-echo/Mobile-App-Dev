//
//  DoDateItem.swift
//  Do Date
//
//  Created by Matt Dickey on 10/26/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import Foundation
import CoreData

struct DoDateItem {
    var title: String
    var desc: String
    var deadline: NSDate
    var UUID: String
    
    init(deadline: NSDate, title: String, desc: String, UUID: String) {
        self.deadline = deadline
        self.title = title
        self.desc = desc
        self.UUID = UUID
    }
    var isOverdue: Bool {
        return (NSDate().compare(self.deadline) == NSComparisonResult.OrderedDescending)
        // deadline is earlier than current date
    }
}
