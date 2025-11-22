//
//  DetailView.swift
//  information-app
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI

struct DetailView: View {
    @StateObject private var appSettingsModel = AppSettingsModel()
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    var content: Content
    
    var body: some View {
        VStack() {
            if appSettingsModel.isGridMode {
                DismissButton(isShowing: $isShowingDetailView)
            }
            
            Spacer()
        
            TitleView(content: content)
            
            Text(content.desc)
                .font(.body)
                .padding()
            
            Spacer()
            
            ButtonLink(title: "Read more", toggles: $isShowingSafariView)
            // ButtonLink(title: "Toggle Mode", toggles: appSettingsModel.$isGridMode)
            // TODO - move button to toggle the app settings grid mode to homepage
        }
        // use a full screen cover instead of a sheet to provide a larger safari view
        .fullScreenCover(
isPresented: $isShowingSafariView,
content: {
    SafariView(
        url: URL(string: content.url) ?? URL(string: "www.apple.com/404")!
    )
})
    }
}

#Preview {
    DetailView(
        isShowingDetailView: .constant(true),
        content: MockData.sampleContent
    )
}
