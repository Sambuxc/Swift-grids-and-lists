//
//  Title.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//
import SwiftUI

struct TitleView: View {
    var content: Mushroom

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(content.image)
                .resizable()
                .frame(width: 90, height: 90)
                .aspectRatio(contentMode: .fit)
            Text(content.name)
                .font(.title)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .textSelection(.enabled)
    }
}
