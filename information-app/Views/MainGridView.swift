//
//  ContentView.swift
//  information-app
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct MainGridView: View {
    @EnvironmentObject var appSettingsModel: AppSettingsModel
    @StateObject private var viewModel = ContentGridViewModel()

    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        Button {
                            appSettingsModel.isGridMode = false
                        } label: {
                            VStack {
                                Image(systemName: "list.bullet")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.primary)
                                    .frame(width: 60, height: 60)
                                    .padding(12)
                                Text("List mode")
                                    .font(.title2)
                                    .foregroundColor(.primary)
                                    .scaledToFit()
                                    .minimumScaleFactor(0.5)
                            }
                            .padding()
                        }
                        ForEach(MockData.data) { content in
                            NavigationLink(value: content) {
                                TitleView(content: content)
                            }
                        }
                    }
                }
                .navigationTitle("📚 Information")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationDestination(for: Content.self) { content in
                    DetailView(content: content)
                }
            }
        }
    }
}
//
//#Preview {
//    MainGridView()
//}
