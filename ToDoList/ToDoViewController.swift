//
//  ToDoViewController.swift
//  ToDoList
//
//  Created by Marissa watkins on 11/30/17.
//  Copyright © 2017 Marissa Watkins. All rights reserved.
//

import UIKit

var list = ["Buy chicken", "Go work out", "Pick up Kate", "Clean house"]

class ToDoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int
    {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            listTableView.reloadData()
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        listTableView.reloadData()
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
