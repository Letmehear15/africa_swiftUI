//
//  AnimalView.swift
//  africa
//
//  Created by Aleksandr Nesterov on 17.09.2024.
//

import SwiftUI

struct AnimalView: View {
    
    let animals: [Animal] = Bundle.main.decodeJson("animals")
    
    var body: some View {
        ForEach(animals) { animal in
            NavigationLink(destination: Videos()){
                HStack(spacing: 12){
                    Image(animal.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                    VStack(alignment: .leading, spacing: 10){
                        Text(animal.name)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        Text(animal.description)
                            .font(.footnote)
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.default)
                    }
                    
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                    
                }
                .padding()
            }
            .contextMenu{
                Button(action: {}) {
                    Text("Go")
                }
            } preview: {
                VStack{
                    Text("HIIII")
                }
                .frame(width: 300, height: 450)
            }
            Divider()
        }
        
    }
}

#Preview {
    AnimalView()
}
