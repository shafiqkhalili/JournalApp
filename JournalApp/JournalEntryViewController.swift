//
//  JournalEntryViewController.swift
//  JournalApp
//
//  Created by Shafigh Khalili on 2020-01-23.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {
    
    var journalEntry  : JournalEntry?
    
    @IBOutlet weak var entryTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        entryTextField.text = journalEntry?.content
        self.title = journalEntry?.date
        // Do any additional setup after loading the view.
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
