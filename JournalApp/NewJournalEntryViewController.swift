//
//  NewJournalEntryViewController.swift
//  JournalApp
//
//  Created by Shafigh Khalili on 2020-01-24.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryText: UITextView!
    
    var entry = JournalEntry(content: "")
    var journal : Journal?
    var journalVC : JournalTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        journalEntryText.becomeFirstResponder()
        self.title = entry.date
        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
       
        entry.content = journalEntryText.text
        journal?.add(entry: entry)
        journalVC?.refresh()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
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
