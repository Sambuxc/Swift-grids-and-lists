//
//  ButtonLink.swift
//  mycologii
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI

struct ButtonLink: View {
    var title: String
    
    var body: some View {
        Button {
            
        } label: {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    ButtonLink(title: "Test title")
}
