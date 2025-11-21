//
//  ListView.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct ListView: View {
    @StateObject private var viewModel = ContentGridViewModel()
    

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.mushrooms) { mushroom in
                    NavigationLink(
                        destination: DetailView(
                            isShowingDetailView: $viewModel.isShowingDetailView,
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
