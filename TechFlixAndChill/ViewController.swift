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
    
    var firebase = Firebase(url: "https://techflixandchill.firebaseio.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: AnyObject) {
        let checkUsername = String(username.text!)
        let checkPassword = String(password.text!)
        let childRef = firebase.childByAppendingPath("users/")
        // Attach a closure to read the data at our posts reference
        childRef.observeEventType(.Value, withBlock: { snapshot in
            if snapshot.hasChild(checkUsername) {
                if String((snapshot.childSnapshotForPath(checkUsername)).childSnapshotForPath("password").value) == checkPassword {
                    print(snapshot.childSnapshotForPath(checkUsername).childSnapshotForPath("email").value)
                }
            }
            }, withCancelBlock: { error in
                print(error.description)
        })
    }

}

