//
//  ContentView.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

struct MainGridView: View {
    @State private var sheetDetail: Bool = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
    ]

    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.frameworks) { mushroom in
                            TitleView(content: mushroom)
                                .onTapGesture {
                                    sheetDetail.toggle()
                                }
                                .sheet(
                                    isPresented: $sheetDetail,
                                ) {
                                    
                                    TitleView(content: mushroom)
                                    Text(mushroom.desc)
                                        .padding()
                                    Text("Read more")
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
    MainGridView().preferredColorScheme(.dark)
}
