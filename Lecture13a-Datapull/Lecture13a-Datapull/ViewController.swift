//
//  ViewController.swift
//  Lecture13a-Datapull
//
//  Created by Sams on 10/24/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func fetch(_ sender: AnyObject) {
//        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=boston,%20ma&appid=77e555f36584bc0c3d55e1e584960580")!
        
        
        //or (another way to do line 23
        
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=boston,%20ma&appid=77e555f36584bc0c3d55e1e584960580") else { return }
        
        let fetcher = Fetcher()
        fetcher.fetch(url:url) { (data,message) in
            print ("\(data),  \(message)")
        }
        print ("Hey I'm Here")
    }

}

