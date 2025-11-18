//
//  DetailView.swift
//  mycologii
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI

struct DetailView: View {
    @Binding var isShowingDetailView: Bool
    var content: Content
    
    var body: some View {
        VStack() {
            HStack() {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "arrow.up.arrow.down")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
                .padding()
            }
            
            Spacer()
            
            TitleView(content: content)
            
            Text(content.desc)
                .font(.body)
                .padding()
            
            Spacer()
            
            ButtonLink(title: "Read more")
        }
    }
}

#Preview {
    DetailView(isShowingDetailView: .constant(true), content: MockData.sampleContent)
}
