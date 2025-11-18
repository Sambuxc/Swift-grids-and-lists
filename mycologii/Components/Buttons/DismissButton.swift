//
//  DismissButton.swift
//  mycologii
//
//  Created by Samuel Bruton on 18/11/2025.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        HStack() {
            Spacer()
            
            Button {
                isShowing = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            .padding()
        }
    }
}

#Preview {
    DismissButton(isShowing: .constant(false))
}
