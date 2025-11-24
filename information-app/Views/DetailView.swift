//
//  DetailView.swift
//  information-app
//
//  Created by Samuel Bruton on 17/11/2025.
//
// TODO
// 1. Come up with another content layout mode instead of hstacking everything
// Icon and title - Top leading aligned
// Content - central and justified
// CTA Btn - Bottom trailing aligned

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var appSettingsModel: AppSettingsModel
    @State var isShowingSafariView: Bool = false
    var content: Content
    
    var body: some View {
        VStack() {
            TitleView(content: content)
            
            Spacer()
            
            Text(content.desc)
                .font(.body)
                .padding()
            
            Spacer()
            
            HStack {
                Spacer()
                ButtonLink(icon: "safari", toggles: $isShowingSafariView)
            }
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

//#Preview {
//    DetailView(content: MockData.sampleContent)
//}
