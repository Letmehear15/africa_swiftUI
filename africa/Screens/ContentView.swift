//
//  ContentView.swift
//  africa
//
//  Created by Aleksandr Nesterov on 11.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Content()
                .tabItem {
                    Text("Browse")
                    Image(systemName: "square.split.2x2")
                }

            Videos()
                .tabItem {
                    Text("Watch")
                    Image(systemName: "play.tv")
                }

            Locations()
                .tabItem {
                    Text("Locations")
                    Image(systemName: "map.fill")
                }

            
            Gallery()
                .tabItem {
                    Text("Gallery")
                    Image(systemName: "photo.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
