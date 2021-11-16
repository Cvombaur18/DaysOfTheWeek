//
//  DayDetailViewController.swift
//  DaysOfTheWeek
//
//  Created by chris vombaur on 10/28/21.
//

import UIKit

class DayDetailViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var dayOriginLabel: UILabel!
    
    //MARK: - Properties
    /**
        optional day object -- landing pad
     'day' is a stored property..this dDay object will receive a value if and only if the 'prepareForSegue' method on our tableViewController is successful
     */
    var day: Day?
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        //When the view is loaded into memory, run this function
        updateViews()
       
    }
    
    //MARK: - Helper Methods
    func updateViews() {
        ///check to make sure *day* has a value. Create a new constant *day* that holds the non-optional value
        guard let day = day else { return }
        //Set the text properties of our labels using properties of the day object
        dayNameLabel.text = day.name
        dayOriginLabel.text = day.origin
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
