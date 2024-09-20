//
//  HeadingView.swift
//  africa
//
//  Created by Aleksandr Nesterov on 18.09.2024.
//

import SwiftUI

struct HeadingView: View {
    let text: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.accent)
                .imageScale(.large)
            
            Text(text)
                .font(.title3)
                .fontWeight(.heavy)
        }
    }
}

#Preview {
    HeadingView(text: "Wilderness in Pictures", image: "photo.on.rectangle.angled")
}


