//
//  DetailView.swift
//  mycologii
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI

struct DetailView: View {
    var content: Content
    
    var body: some View {
        VStack() {
            HStack() {
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
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
    DetailView(content: MockData.mushrooms[0])
}
