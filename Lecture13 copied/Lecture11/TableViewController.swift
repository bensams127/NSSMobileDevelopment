//
//  ViewController.swift
//  Lecture11
//
//  Created by Sams on 10/17/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController  {

    private var names = ["Monica", "Van", "Eric","Jack", "Mark", "Matt", "Ben", "David","Monica", "Van", "Eric","Jack", "Mark", "Matt", "Ben", "David","Monica", "Van", "Eric","Jack", "Mark", "Matt", "Ben", "David"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
   override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellName = indexPath.row % 2 == 0 ? "nameCell" : "alternateNameCell" //ALTERNATING ROW: <-- for alternating color rows
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellName)//<-- name of prototype Cell
            else {
                preconditionFailure ("Could not get a nameCell")
        }
        cell.textLabel!.text = names[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section Title for section: \(section)"
    }
    
    //MARK: Delegation Methods - just need to know this
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            names.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        code
    }
    //MARK: Editor ViewController Support
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tappedCell = sender as? UITableViewCell
            else {
                preconditionFailure("no tableViewCell")
        }
        guard let editorViewController = segue.destination as? NameEditorViewController
            else { preconditionFailure("bad segue")
        }
        editorViewController.saveClosure = {
            tappedCell.textLabel?.text = $0
        }
    }
}
