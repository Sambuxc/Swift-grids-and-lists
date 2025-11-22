//
//  ContentView.swift
//  information-app
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct MainGridView: View {
    @StateObject private var viewModel = ContentGridViewModel()

    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.data) { content in
                            NavigationLink(value: content) {
                                TitleView(content: content)
                            }
                        }
                    }
                }
                .navigationTitle("📚 Informative")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationDestination(for: Content.self) { content in
                    DetailView(content: content)
                }
            }
        }
    }
}

#Preview {
    MainGridView()
}
