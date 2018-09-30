//
//  MTAResponse.swift
//  Accessibly
//
//  Created by Stanley Zeng on 9/30/18.
//  Copyright © 2018 Stanley Zeng. All rights reserved.
//

import Foundation
import SwiftSoup


enum HTMLError: Error {
    case badInnerHTML
}
struct MTAResponse {
    
    init(_ innerHTML: Any?) throws {
        guard let htmlString = innerHTML as? String else { throw HTMLError.badInnerHTML }
    
        let doc = try SwiftSoup.parse(htmlString)
        // doc.getElementsBy{}
        let table = try doc.select("id=ctl00_ContentPlaceHolder1_gvElevator").first()
        guard let first_table = table else { throw HTMLError.badInnerHTML }
        
        for row in try first_table.select("tr") {
            if row.hasAttr("class") {
                print("GOT A THING")
            }
        }
        

    }
    
    
    
}
