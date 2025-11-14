//
//  ContentView.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct MainGridView: View {
let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks) { mushroom in
                TitleView(content: mushroom)
            }
        }
    }
}

#Preview {
    MainGridView()
}
