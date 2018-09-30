//
//  ViewController.swift
//  Accessibly
//
//  Created by Stanley Zeng on 9/29/18.
//  Copyright © 2018 Stanley Zeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func assignbackground(){
        let background = UIImage(named: "bg.png")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

    @IBAction func toSMSController(_ sender: Any) {
        performSegue(withIdentifier: "toSMS", sender: self)
    }
}

