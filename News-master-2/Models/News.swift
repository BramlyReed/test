//
//  News.swift
//  News
//
//  Created by Stanislav on 02.12.2019.
//  Copyright © 2019 user160567. All rights reserved.
//

import Foundation

class News {
    var id: String
    var title: String
    var text: String
    var date: Date = Date()
    
    init(id: String, data: JSON) {
        self.id = id
        self.title  = data["title"] as! String
        self.text   = data["text"] as! String
        self.date   = (data["date"] as! String).date
    }
}
