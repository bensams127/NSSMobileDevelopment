//
//  Problem2ViewController.swift
//  Assignment2
//
//  Created by Sams on 10/4/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {
  
    @IBOutlet weak var textField2: UITextView!

    @IBAction func runButton2(_ sender: AnyObject) {
        
        textField2.text = ("We have pushed this button successfully")
        
//        let arrayElement = [Bool](repeating: false, count: 10)
//        var before: [[Bool]] = [[Bool]](repeating: arrayElement, count:10)
//        for i in 0 ..< arrayElement.count {
//            for j in 0 ..< before.count {
//                if arc4random_uniform(3) == 1 {
//                    before[i][j] = true
//                    
//                    let numberOfTrue = (0 ..< before.count).reduce(0) { (accum, row) in
//                        return accum + before[row].filter { $0 }.count
//                        
                }
                    textField2.text = ("There are \(asdfasdf) Living Cells here")


        
                           
            
                    
                    
                    }

            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //self.view.backgroundColor = UIColor.green.withAlphaComponent(0.1)
        
        self.navigationItem.title = "Problem 2"
        
        }

}
