//
//  Registration.swift
//  TechFlixAndChill
//
//  Created by Niraj Suresh on 3/7/16.
//  Copyright © 2016 Snickers. All rights reserved.
//

import UIKit

class Registration: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var repassword: UITextField!
    
    @IBOutlet weak var secuHint: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var major: UIPickerView!
    
    var ref = Firebase(url: "https://techflixandchill.firebaseio.com/users/")
    
    var majors: [String] =  ["Aerospace Engineering",
        "Applied Language and Intercultural Studies",
        "Applied Mathematics",
        "Applied Physics",
        "Architecture",
        "Biochemistry",
        "Biology",
        "Biomedical Engineering",
        "Building Construction",
        "Business Administration",
        "Chemical Engineering",
        "Chemistry",
        "Civil Engineering",
        "Computational Media",
        "Computer Science",
        "Discrete Mathematics",
        "Earth and Atmospheric Sciences",
        "Economics and International Affairs",
        "Economics",
        "Electrical Engineering",
        "Environmental Engineering",
        "Global Economics and Modern Languages",
        "History, Technology, and Society",
        "Industrial Design",
        "Industrial Engineering",
        "International Affairs and Modern Languages",
        "International Affairs",
        "Literature, Media, and Communication",
        "Materials Science and Engineering",
        "Mechanical Engineering",
        "Nuclear Engineering",
        "Physics",
        "Psychology",
        "Public Policy"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.major.dataSource = self;
        self.major.delegate = self;
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func register(sender: AnyObject) {

            
        }
        
        
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return majors.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return majors[row]
    }

}
