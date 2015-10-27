//
//  taskManager.swift
//  Do Date
//
//  Created by Matt Dickey on 10/25/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import Foundation
import CoreData

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "name not defined"
    var desc = "description not defined"
    //var date = "date not defined"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
    
}


