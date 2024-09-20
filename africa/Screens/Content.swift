//
//  ContentScreen.swift
//  africa
//
//  Created by Aleksandr Nesterov on 11.09.2024.
//

import SwiftUI

struct Content: View {
    
    var body: some View {
        NavigationStack{
            ScrollView(){
                VStack{
                    ContentSliderView()
                        .frame(height: 300)
                    
                    AnimalListView()
                }
                .navigationTitle("Africa")
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    Content()
}
