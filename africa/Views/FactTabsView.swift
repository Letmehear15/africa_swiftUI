//
//  FactTabs.swift
//  africa
//
//  Created by Aleksandr Nesterov on 20.09.2024.
//

import SwiftUI

struct FactTabs: View {
    let animal: Animal
    
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self) {fact in
                        Text(fact)
                }
            }
            .tabViewStyle(.page)
            .frame(height: 150)
        }
    }
}

#Preview {
    FactTabs(animal: Bundle.main.decodeJson("animals")[0])
}
