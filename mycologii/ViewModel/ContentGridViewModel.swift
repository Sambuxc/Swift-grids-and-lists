//
//  ContentGridViewModel.swift
//  mycologii
//
//  Created by Samuel Bruton on 17/11/2025.
//

import SwiftUI
import Combine

final class ContentGridViewModel: ObservableObject {
    @Published var selectedContent: Content? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false

    init(selectedContent: Content? = nil) {
        self.selectedContent = selectedContent
    }
}
