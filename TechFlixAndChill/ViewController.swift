//
//  ViewController.swift
//  TechFlixAndChill
//
//  Created by Niraj Suresh on 3/6/16.
//  Copyright © 2016 Snickers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(sender: AnyObject) {
    }


    @IBAction func register(sender: AnyObject) {
        self.navigationController!.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier("userProfileController") as UIViewController, animated: true)

    }

}

