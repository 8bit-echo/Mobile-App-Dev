//
//  taskManager.swift
//  Do Date
//
//  Created by Matt Dickey on 9/25/15.
//  Copyright (c) 2015 Matt Dickey. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "not defined"
    var desc = "not defined"
//    var date : String = dateAsString
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String, date: String){
        tasks.append(task(name: name, desc: desc))
    }
    
}
