//
//  JournalEntry.swift
//  JournalApp
//
//  Created by Shafigh Khalili on 2020-01-23.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import Foundation

struct JournalEntry {
    private var unformatedDate : Date
    var content : String
    private let dateFormater = DateFormatter()
    
    
    init(date : Date, content : String) {
        self.unformatedDate = date
        self.content = content
        dateFormater.dateFormat = "yyyy-MM-dd"
    }
    init(content : String) {
        self.unformatedDate = Date()
        self.content = content
        dateFormater.dateFormat = "yyyy-MM-dd"
    }
    
    var date : String {
        return dateFormater.string(from: unformatedDate)
    }
}
