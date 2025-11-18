//
//  ButtonLink.swift
//  mycologii
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI

struct ButtonLink: View {
    var title: String
    @Binding var toggles: Bool
    
    var body: some View {
        Button {
            $toggles.wrappedValue.toggle()
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
    @Previewable @State var test: Bool = false
    
    ButtonLink(title: "Test title", toggles: $test)
}
