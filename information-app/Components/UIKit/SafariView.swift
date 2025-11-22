//
//  SafariView.swift
//  information-app
//
//  Created by Samuel Bruton on 18/11/2025.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}

#Preview {
    SafariView(url: URL(string:"http://google.com")!)
}
