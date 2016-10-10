//
//  Problem2ViewController.swift
//  Assignment2
//
//  Created by Sams on 10/4/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {

    @IBAction func runButton2(_ sender: AnyObject) {
        textField2.text = ("We have pushed this button successfully")
        
       
      
    }
   
    @IBOutlet weak var textField2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //self.view.backgroundColor = UIColor.green.withAlphaComponent(0.1)
        
        self.navigationItem.title = "Problem 2"
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
