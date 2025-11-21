//
//  ContentView.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct MainGridView: View {
    @StateObject private var viewModel = ContentGridViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.mushrooms) { mushroom in
                            TitleView(content: mushroom)
                                .onTapGesture {
                                    // tapping on the TitleView sets the content
                                    // which triggers showing the sheet by using `didSet` in ViewModel
                                    viewModel.selectedContent = mushroom
                                }
                                .sheet(
                                    isPresented: $viewModel.isShowingDetailView,
                                ) {
                                    DetailView(
                                        isShowingDetailView: $viewModel.isShowingDetailView,
                                        content: viewModel.selectedContent ?? MockData.sampleContent
                                    )
                                }
                        }
                    }
                }
                .navigationTitle("🪸 Mycologii")
            }
        }
    }
}

#Preview {
    MainGridView()
}
