//
//  SettingsViewController.swift
//  Accessibly
//
//  Created by Stanley Zeng on 9/30/18.
//  Copyright © 2018 Stanley Zeng. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toHome(_ sender: Any) {
        performSegue(withIdentifier: "toHome", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
