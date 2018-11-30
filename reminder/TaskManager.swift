//
//  TaskManager.swift
//  reminder
//
//  Created by Student 06 on 21/11/18.
//  Copyright © 2018 Student 06. All rights reserved.
//

import UIKit

var taskMgr : TaskManager = TaskManager()

struct task {
    var name = "Name"
    var desc = "Description"
}

class TaskManager: NSObject {
 var tasks = [task]()
    func addTask(name: String,desc:String)
    {
        tasks.append(task(name: name, desc: desc))
    }
}
