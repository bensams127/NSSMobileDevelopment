//
//  NameEditorViewController.swift
//  Lecture11
//
//  Created by Sams on 10/17/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class NameEditorViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var saveClosure: ((String) -> Void )?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
    @IBAction func save(_ sender: AnyObject) {
        saveClosure? (nameTextField!.text!)
    }

    



}
