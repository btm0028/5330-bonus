//
//  ViewController.swift
//  bonus
//
//  Created by Brandon  Miller on 2/22/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var current = ""
    
    var amendments = [
        Amendment("First Amendment"),
        Amendment("Second Amendment"),
        Amendment("Third Amendment"),
        Amendment("Fourth Amendment"),
        Amendment("Fifth Amendment"),
        Amendment("Sixth Amendment"),
        Amendment("Seventh Amendment"),
        Amendment("Eighth Amendment"),
        Amendment("Ninth Amendment"),
        Amendment("Tenth Amendment")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amendments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = amendments[indexPath.row].amendment
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, _) in
            print("Deleted " + self.amendments[indexPath.row].amendment)
            self.amendments.remove(at: indexPath.row)
            tableView.reloadData()
        }
        let editAction = UIContextualAction(style: .normal, title: "Edit") { (_, _, _) in
            print("Edited " + self.amendments[indexPath.row].amendment)
        }
        
        let config = UISwipeActionsConfiguration(actions: [deleteAction, editAction])
        config.performsFirstActionWithFullSwipe = false
        return config
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        current = self.amendments[indexPath.row].amendment
        self.performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let navigation = segue.destination as! SecondViewController
            navigation.detail = current
        }
    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

