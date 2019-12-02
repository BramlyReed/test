//
//  Date+Extensions.swift
//  News
//
//  Created by Stanislav on 02.12.2019.
//  Copyright © 2019 user160567. All rights reserved.
//

import Foundation

extension String {
    
    var date: Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        
        return formatter.date(from: self)!
    }
    
}
