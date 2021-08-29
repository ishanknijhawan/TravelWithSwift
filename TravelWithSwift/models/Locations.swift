//
//  Locations.swift
//  TravelWithSwift
//
//  Created by Ishank Nijhawan on 29/08/21.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    var primary: Location {
        places[6]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
