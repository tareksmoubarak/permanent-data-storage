//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Tarek Moubarak on 9/27/18.
//  Copyright © 2018 Tarek Moubarak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UserInput: UITextField!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var resultTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let phoneNumberObject = UserDefaults.standard.object(forKey: "phoneNumber")
        if let number = phoneNumberObject as? String{
            resultTitle.text = "You're current saved number is"
            PhoneNumber.text = number
        } else{
            resultTitle.text = "No Saved Phone Number"
            PhoneNumber.text = ""
        }
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view, typically from a nib.
        
//        UserDefaults.standard.set("Tarek", forKey: "name")
//
//        let nameObject = UserDefaults.standard.object(forKey: "name")
//
//        if let name = nameObject as? String{
//            print(name)
//        }
//
//        let arr = [1,2,3,4]
//        UserDefaults.standard.set(arr, forKey: "array")
//
//        let arrayObject = UserDefaults.standard.object(forKey: "array")
//
//        if let array = arrayObject as? NSArray {
//            print(array)
//        }
    }

    @IBAction func SaveBtn(_ sender: Any) {
        let userPhone = UserInput.text
        if let input = userPhone{
            UserDefaults.standard.set(input, forKey: "phoneNumber")
            resultTitle.text = "You're current saved number is"
            PhoneNumber.text = userPhone
        }
    }
    
}

