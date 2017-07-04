//
//  ViewController.swift
//  SettingsTest
//
//  Created by Rollin Francois on 7/4/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults()
        let registrationDictionary: [String: String] = ["user_name": "Rollin Francois", "user_age": "40"]
        
        userDefaults.register(defaults: registrationDictionary)
        userDefaults.synchronize()
        
        nameLabel.text = userDefaults.value(forKey: "user_name") as? String
        ageLabel.text = userDefaults.value(forKey: "user_age") as? String
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

