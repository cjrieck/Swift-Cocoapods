//
//  ViewController.swift
//  Swift Cocoapods
//
//  Created by Clayton Rieck on 10/31/14.
//  Copyright (c) 2014 Clayton Rieck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let networkingManager = AFHTTPRequestOperationManager()
    
    override init() {
        super.init(nibName: nil, bundle: nil)
        // Do any custom initialization here
        
        networkingManager.GET(
            "http://jsonip.com/",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,
                responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
            },
            failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

