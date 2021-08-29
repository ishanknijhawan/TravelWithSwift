//
//  TravelWithSwiftApp.swift
//  TravelWithSwift
//
//  Created by Ishank Nijhawan on 28/08/21.
//

import SwiftUI

@main
struct TravelWithSwiftApp: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: Locations().primary)
                }
                .tabItem {
                    Text("Discover")
                    Image(systemName: "paperplane")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Text("Locations")
                    Image(systemName: "map")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Text("Tips")
                    Image(systemName: "star")
                }
            }.environmentObject(locations)
        }
    }
}
