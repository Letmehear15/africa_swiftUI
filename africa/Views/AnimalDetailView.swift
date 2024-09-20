//
//  AnimalDetailView.swift
//  africa
//
//  Created by Aleksandr Nesterov on 18.09.2024.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 20){
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                VStack(spacing: 40){
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .background(
                            Color.accentColor
                                .frame(height: 7)
                                .offset(y: 25)
                        )
                    
                    Text(animal.headline)
                        .font(.headline)
                        .foregroundStyle(.accent)
                        .multilineTextAlignment(.leading)
                    
                    HeadingView(text: "Wilderness in Pictures", image: "photo.on.rectangle.angled")
                    
                    AnimalGallery(animal: animal)
                    
                    Group{
                        HeadingView(text: "Did you know?", image: "questionmark.circle")
                        
                        FactTabsView(animal: animal)
                        
                        HeadingView(text: "All about \(animal.name)", image: "exclamationmark.circle")
                        
                        Text(animal.description)
                            .multilineTextAlignment(.leading)

                    }
                    
                    Group {
                        HeadingView(text: "National view", image: "map")
                        
                        MapView()
                    }

                    Group {
                        HeadingView(text: "Learn more", image: "books.vertical")
                        
                        GroupBox{
                            LabeledContent{
                                HStack{
                                    Image(systemName: "arrow.up.right.square")
                                        .foregroundStyle(.accent)
                                    Link(destination: URL(string: animal.link)!, label: {
                                        Text(animal.name)
                                            .foregroundStyle(.accent)
                                    })
                                }
                            } label: {
                                HStack{
                                    Image(systemName: "globe")
                                    Text("Wikipedia")
                                }
                            }
                        }
                    }

                }
                .padding()
            }

        }
        .navigationTitle("Learn about \(animal.name)")
        .toolbarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        AnimalDetailView(animal: Bundle.main.decodeJson("animals")[0])
    }
}
