
//
//  Restaurant.swift
//  myApp
//
//  Created by Omar Wasim on 7/18/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

class Restaurant {
    
    var key: String = ""
    var name: String = ""
    var menuCategories: [MenuCategory]?
    
    init(key: String, name: String) {
        self.name = name
        self.key = key
    }
    
    init?(json: JSON) {
        guard let keyFromJSON = json["apiKey"].string,
            let nameFromJSON = json["name"].string else {
            return
        }
        
        self.key = keyFromJSON
        self.name = nameFromJSON

    }
    
}