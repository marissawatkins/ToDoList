//
//  CreateToDoViewController.swift
//  ToDoList
//
//  Created by Marissa watkins on 11/30/17.
//  Copyright © 2017 Marissa Watkins. All rights reserved.
//


import UIKit

class CreateToDoViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func addItemButton(_ sender: Any) {
        
        if (inputTextField.text != "")
        {
            list.append(inputTextField.text!)
            inputTextField.text = ""
        }
        
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
