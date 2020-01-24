//
//  Journal.swift
//  JournalApp
//
//  Created by Shafigh Khalili on 2020-01-23.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import Foundation

class Journal{
    private var entries = [JournalEntry]()
    
    //Computed property
    var count : Int{
        return entries.count
    }
    
    func add(entry: JournalEntry){
        entries.append(entry)
    }
    func entry(index : Int) -> JournalEntry? {
       
        if index >= 0 && index < entries.count{
            return entries[index]
        }
        return nil
    }
}

