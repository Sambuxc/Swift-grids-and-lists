//
//  ListView.swift
//  information-app
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var appSettingsModel: AppSettingsModel
    
    var body: some View {
        NavigationStack {
            List {
                Button {
                    appSettingsModel.isGridMode = true
                } label: {
                    HStack {
                        Image(systemName: "circle.grid.3x3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.primary)
                            .frame(width: 40, height: 40)
                            .padding(12)
                        Text("Switch to Grid mode, Yeh!")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                ForEach(MockData.data) { mushroom in
                    NavigationLink(
                        // another way to define destination link
                        // GridView version declares as a stack modifier
                        destination: DetailView(
                            content: mushroom
                        )
                        .environmentObject(appSettingsModel)
                    ) {
                        // Instead of .sheet like on MainGridView, we are supply content via NavLink
                        TitleView(
                            content: mushroom
                        )
                        .environmentObject(appSettingsModel)
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
