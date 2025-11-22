//
//  Title.swift
//  information-app
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
                ContentView(isGridMode: appSettingsModel.isGridMode, content: content, size: size)
            }
            .padding()
        } else {
            ContentView(isGridMode: appSettingsModel.isGridMode, content: content, size: size)
        }
    }
}

struct ContentView: View {
    let isGridMode: Bool
    let content: Content
    let size: CGFloat
    
    var body: some View {
        Image(content.image)
            .resizable()
            .frame(width: size, height: size)
            .aspectRatio(contentMode: .fit)
            .padding(.trailing, isGridMode ? 0 : 16)
        Text(content.name)
            .font(.title)
            .scaledToFit()
            .minimumScaleFactor(0.5)
    }
}
