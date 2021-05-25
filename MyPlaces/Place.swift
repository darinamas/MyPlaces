//
//  Place.swift
//  MyPlaces
//
//  Created by Daryna Polevyk on 25/05/2021.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
   static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Love&Life"
    ]
    
   static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Prague", type: "Bar", image: place))
        }
        
        return places
        
    }
}





