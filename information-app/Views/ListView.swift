//
//  ListView.swift
//  information-app
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.data) { mushroom in
                    NavigationLink(
                        // another way to define destination link
                        // GridView version declares as a stack modifier
                        destination: DetailView(
                            content: mushroom
                        )) {
                            // Instead of .sheet like on MainGridView, we are supply content via NavLink
                            TitleView(content: mushroom)
                        }
                }
            }
            .navigationTitle("📚 Information")
        }
        .accentColor(.white)
    }
}

#Preview {
    ListView()
}
