//
//  StationCell.swift
//  Accessibly
//
//  Created by Stanley Zeng on 9/30/18.
//  Copyright © 2018 Stanley Zeng. All rights reserved.
//

import UIKit

class StationCell: UITableViewCell {

    @IBOutlet weak var onImageView: UIImageView!
    
    @IBOutlet weak var stationLabel: UILabel!
    
    func setStation(availi: Available) {
        stationLabel.text = availi.title
        if (availi.title == "14th Street - Union Sq") {
            stationLabel.textColor = UIColor.red
        }
        else {
            
        }
    }
}
