//
//  Day.swift
//  DaysOfTheWeek
//
//  Created by chris vombaur on 10/28/21.
//

import Foundation

class Day {
    
    ///Property if the Day ibject that will hold a String (the name of the day)
    let name: String
    ///Property of the Day object that will hold a string (the origin of the day)
    let origin: String
    
    /**
            Initializes the Day object
     --this memberwise initializer will take in a String for *name* and a String for *origin* and will set them to the properties of a Day object
     
     */
    
    init(name: String, origin: String) {
        self.name = name
        self.origin = origin
    }
} //End of class

