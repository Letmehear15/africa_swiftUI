//
//  AnimalGallery.swift
//  africa
//
//  Created by Aleksandr Nesterov on 18.09.2024.
//

import SwiftUI

struct AnimalGallery: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                ForEach(animal.gallery, id: \.self) {image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 20))
                        .frame(width: 300)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    AnimalGallery(animal: Bundle.main.decodeJson("animals")[0])
}
