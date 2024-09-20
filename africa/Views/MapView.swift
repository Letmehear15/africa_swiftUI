//
//  MapView.swift
//  africa
//
//  Created by Aleksandr Nesterov on 20.09.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599),
            span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60)
        )
    )
    
    var body: some View {
        Map(position: $position)
            .frame(height: 256)
            .overlay(alignment: .topTrailing) {
                HStack{
                    NavigationLink(destination: Locations()) {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .fontWeight(.heavy)
                            .foregroundStyle(.accent)
                    }
                }
                .padding()
                .background(
                    Color.black.opacity(0.5)
                )
                .clipShape(.rect(cornerRadius: 10))
                .padding(8)
            }
    }
}

#Preview {
    MapView()
}
