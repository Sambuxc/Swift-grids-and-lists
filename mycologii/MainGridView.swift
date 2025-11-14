//
//  ContentView.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct MainGridView: View {
let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let aShroom = Mushroom(
        name: "Amanita Muscaria",
        image: "app-clip",
        url: "",
        desc: ""
    )
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks, id: \.self) { mushroom in
                TitleView(name: mushroom.name, image: mushroom.image)
            }
        }
    }
}

#Preview {
    MainGridView()
}
