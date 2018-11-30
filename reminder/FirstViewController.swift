//
//  FirstViewController.swift
//  reminder
//
//  Created by Student 06 on 21/11/18.
//  Copyright © 2018 Student 06. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = UITableViewCell(style: .subtitle, reuseIdentifier: "Default Task")
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete)
        {
            taskMgr.tasks.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        TableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

