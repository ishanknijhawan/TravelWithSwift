//
//  ContentView.swift
//  TravelWithSwift
//
//  Created by Ishank Nijhawan on 28/08/21.
//̦

import SwiftUI

struct ContentView: View {
    var location: Location
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .scaledToFit()
                .cornerRadius(10)
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(8)
            
            Text(location.country)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(16)
                .multilineTextAlignment(.leading)
            
            Text("Do you know?")
                .font(.title3)
                .padding(8)
            
            Text(location.more)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
        }.navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location: Location.exapleLocation)
        }
    }
}
