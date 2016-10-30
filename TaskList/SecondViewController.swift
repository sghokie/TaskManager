//
//  SecondViewController.swift
//  TaskList
//
//  Created by Steven Gupta on 10/24/16.
//  Copyright © 2016 Steven Gupta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //this func will hide the keyboard when touching off the boxes
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    @IBAction func btnAddTask(_ sender: UIButton) {
        
        taskMgr.addTask(name: nameOfTask.text!, desc: descOfTask.text!)
        self.view.endEditing(true)
        nameOfTask.text = ""
        descOfTask.text = ""
        self.tabBarController?.selectedIndex = 0
        
    }

    
    @IBOutlet weak var nameOfTask: UITextField!

    @IBOutlet weak var descOfTask: UITextField!
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }
}

