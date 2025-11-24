//
//  ButtonLink.swift
//  information-app
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI

struct ButtonLink: View {
    var icon: String?
    var title: String?
    @Binding var toggles: Bool
    
    var body: some View {
        Button {
            $toggles.wrappedValue.toggle()
        } label: {
            HStack {
                if icon != nil {
                    Image(systemName: icon!)
                        .padding(.leading, 16)
                        .padding(.trailing, title == nil ? 0 : 4)
                }
                if title != nil {
                    Text(title!)
                }
            }
            .padding(.vertical, 8)
            .padding(.leading, icon == nil ? 16 : 0)
            .padding(.trailing, 16)
        }
        .buttonStyle(.glass)
        .foregroundColor(.primary)
    }
}

#Preview {
    @Previewable @State var test: Bool = false
    
    ButtonLink(icon: "link", toggles: $test)
}
