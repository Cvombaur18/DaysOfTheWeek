//
//  DayController.swift
//  DaysOfTheWeek
//
//  Created by chris vombaur on 10/28/21.
//

import Foundation

class DayController {
    
    /**
     Array of Day objects
     
     'daysOfTheWeek' is a computed property --runs code to calculate a value
     inside the scope, we are intializing seven Day objects and returning them in an array
     
     static for global access
     */
    
    //Source of Truth
    static var daysOfTheWeek: [Day] {
        
        let sunday = Day(name: "Sunday", origin: "First day of the week")
        
        let monday = Day(name: "Monday", origin: "Second day of the week")
        
        let tuesday = Day(name: "Tuesday", origin: "Third day of the week")
        
        let wednesday = Day(name: "Wednesday", origin: "Fourth day of the week")
        
        let thursday = Day(name: "Thursday", origin: "Fifth day of the week")
        
        let friday = Day(name: "Friday", origin: "Sixth day of the week")
        
        let saturday = Day(name: "Saturday", origin: "Seventh day of the week")
        
        return [sunday, monday, tuesday, wednesday, thursday, friday, saturday]
    }
    
    
}//End of class
