//
//  Title.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//
import SwiftUI

struct TitleView: View {
    @StateObject private var appSettingsModel = AppSettingsModel()
    var content: Content
    

    var body: some View {
        let size: CGFloat = appSettingsModel.isGridMode ? 90 : 60
        
        if appSettingsModel.isGridMode {
            VStack(alignment: .center, spacing: 0) {
                ContentView(content: content, size: size)
            }
            .padding()
        } else {
            ContentView(content: content, size: size)
        }
    }
}

struct ContentView: View {
    let content: Content
    let size: CGFloat
    
    var body: some View {
        Image(content.image)
            .resizable()
            .frame(width: size, height: size)
            .aspectRatio(contentMode: .fit)
        Text(content.name)
            .font(.title)
            .scaledToFit()
            .minimumScaleFactor(0.5)
    }
}
