//
//  ContentSliderView.swift
//  africa
//
//  Created by Aleksandr Nesterov on 16.09.2024.
//

import SwiftUI

struct ContentSliderView: View {
    let covers: [Cover] = Bundle.main.decodeJson("covers")
    
    var body: some View {
        TabView {
            ForEach(covers) {item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    ContentSliderView()
}
