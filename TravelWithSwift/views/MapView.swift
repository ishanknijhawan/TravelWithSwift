//
//  MapView.swift
//  TravelWithSwift
//
//  Created by Ishank Nijhawan on 29/08/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var locations: Locations
    @State  var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 28.4595, longitude: 77.0266), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(4)
                        .shadow(radius: 5)
                        .frame(width: 80, height: 40)
                }
            }
        }
            .navigationTitle("Locations")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
