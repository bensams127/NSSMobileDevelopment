//
//  Problem4ViewController.swift
//  Assignment2
//
//  Created by Sams on 10/4/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class Problem4ViewController: UIViewController {

    @IBAction func runButton4(_ sender: AnyObject) {
        textField4.text = ("We have successfully pushed this button")
    }
   
    @IBOutlet weak var textField4: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.view.backgroundColor = UIColor.blue
        
        self.navigationItem.title = "Problem 4"
    }


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
