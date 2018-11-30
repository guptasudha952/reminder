//
//  SecondViewController.swift
//  reminder
//
//  Created by Student 06 on 21/11/18.
//  Copyright © 2018 Student 06. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var TaskTextField: UITextField!
    
    @IBOutlet weak var DescTextFirld: UITextField!
    
   
    @IBAction func SaveButton(_ sender: UIButton) {
        if (TaskTextField.text == "")
        {
            
        }
        else
        {
            taskMgr.addTask(name: TaskTextField.text!, desc: DescTextFirld.text!)
            self.view.endEditing(true)
            TaskTextField.text = nil
            DescTextFirld.text = nil
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

