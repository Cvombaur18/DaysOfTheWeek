//
//  DayListTableViewController.swift
//  DaysOfTheWeek
//
//  Created by chris vombaur on 10/28/21.
//

import UIKit

class DayListTableViewController: UITableViewController {
    
    
    
    //MARK: - Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
    Int {
        ///We get the count of the days of *daysOfTheWeek* array on the DayController, and return that value as the number of rows we want
        return DayController.daysOfTheWeek.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        ///The identifier given here must match the reuse identifier on the story board.  ex...dayCell mathes here
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        /// grab the day object from the *daysOfTheWeek* array.  We use the index of the currently considered cell and get the object at the cooresponding index of the Source of Truth
        let day = DayController.daysOfTheWeek[indexPath.row]
        
        ///Grab the name property of the day object and assign it to the text property of the textLabel of the cell
        cell.textLabel?.text = day.name

        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDOO
        // Identifier, IndexPath, Destination, Object to Send, Object to Receive
        
        
        //Identifier -- Make sure we are on the right segue
        if segue.identifier == "toDetailVC" {
            
            //IndexPath -- get the indexPath of the selected cell
            //destination -- give the segue a blueprint for how to interperet the data at the destination
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? DayDetailViewController
                    else { return }
            
            //Object to send -- the object we are sending from the source of truth that corresponds to the selected indexPath
            let dayToSend = DayController.daysOfTheWeek[indexPath.row]
            
            //Object to receive -- tell the data where to land
            destination.day = dayToSend
        }
    }
    

}// Endo of class
