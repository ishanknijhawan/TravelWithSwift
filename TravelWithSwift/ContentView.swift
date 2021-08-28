//
//  ContentView.swift
//  TravelWithSwift
//
//  Created by Ishank Nijhawan on 28/08/21.
//̦

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Image("highlands")
                .scaledToFit()
            
            Text("The Mountains")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(8)
            
            Text("United Kingdom")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
            
            Text("The area is very sparsely populated, with many mountain ranges dominating the region, and includes the highest mountain in the British Isles, Ben Nevis. During the 18th and early 19th centuries the population of the Highlands rose to around 300,000, but from c. 1841 and for the next 160 years, the natural increase in population was exceeded by emigration (mostly to Canada, the United States, Australia and New Zealand, and migration to the industrial cities of Scotland and England.) The area is now one of the most sparsely populated in Europe. At 9.1/km2 (24/sq mi) in 2012, the population density in the Highlands and Islands is less than one seventh of Scotland's as a whole, comparable with that of Bolivia, Chad and Russia.")
                .padding(16)
                .multilineTextAlignment(.leading)
            
            Text("Do you know?")
                .font(.title3)
                .padding(8)
            
            Text("If you're looking for a special summer getaway, we have a great vacation for you. If you're looking for a cheeky winter break, we can make it happen. If you accidentally said 'you too' after a cinema usher ripped your ticket and told you to enjoy the film and now need to fly to the opposite end of the planet and assume a false name to avoid eternal embarrassment, we're here to help. TL;DR: we're pretty darn good at vacations.")
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
        }.navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
