//
//  JournalTableViewController.swift
//  JournalApp
//
//  Created by Shafigh Khalili on 2020-01-23.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {
    let cellIdentity = "JournalEntryCell"
    let journalEntrySegueId = "showJournalEntry"
    
    //var journalEntries = [JournalEntry]()
    let journal = Journal()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journal.add(entry: JournalEntry(content: "First entry"))
        journal.add(entry: JournalEntry(content: "Second entry"))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journal.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity, for: indexPath)
        //        if let entry = journal.entry(index: indexPath.row){
        //            cell.textLabel?.text = entry.date
        //        }
        guard let entry = journal.entry(index: indexPath.row) else{return UITableViewCell()}
        cell.textLabel?.text = entry.date
        // Configure the cell...
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //        if segue.identifier == journalEntrySegueId{
        //            if let destinationVc = segue.destination as? JournalEntryViewController{
        //                if let cell = sender as? UITableViewCell{
        //                    if let indexPath = tableView.indexPath(for: cell){
        //                        if let entry = journal.entry(index: indexPath.row){
        //                            destinationVc.journalEntry = entry
        //                        }
        //                    }
        //                }
        //            }
        //        }
        //        if segue.identifier == journalEntrySegueId{
        //            if let destinationVc = segue.destination as? JournalEntryViewController,
        //                let cell = sender as? UITableViewCell,
        //                let indexPath = tableView.indexPath(for: cell),
        //                let entry = journal.entry(index: indexPath.row){
        //                destinationVc.journalEntry = entry
        //            }
        //        }
        if segue.identifier == journalEntrySegueId{
            guard let destinationVc = segue.destination as? JournalEntryViewController else {return}
            guard let cell = sender as? UITableViewCell else{return}
            guard let indexPath = tableView.indexPath(for: cell) else{return}
            guard let entry = journal.entry(index: indexPath.row) else {return}
            
            destinationVc.journalEntry = entry
        }
    }
}

