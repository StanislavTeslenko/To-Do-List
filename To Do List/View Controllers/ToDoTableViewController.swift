//
//  ToDoTableViewController.swift
//  To Do List
//
//  Created by Stanislav Teslenko on 6/26/19.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var todos = [ToDo]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ToDoItemSegue" else { return }
        guard let destination = segue.destination as? ToDoItemTableViewController else {return}
        guard let selectedIndex = tableView.indexPathForSelectedRow else {return}
        destination.todo = todos[selectedIndex.row]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todos = [
        ToDo(title: "Купить мясо", image: UIImage(named: "Meat")),
        ToDo(title: "Заехать в МФЦ", image: UIImage(named: "Mall")),
        ToDo(title: "Встретиться с инвесторами", image: UIImage(named: "Investor"))
        
        ]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        cell.detailTextLabel?.text = todo.formattedDate
        cell.imageView?.image = todo.image
        return cell
    }
    
}
