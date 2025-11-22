//
//  ContentGridViewModel.swift
//  information-app
//
//  Created by Samuel Bruton on 17/11/2025.
//
// In more developed applications this file might hold logic for:
// - Other off MainThread tasks
// - Network calls

import SwiftUI
import Combine

final class ContentGridViewModel: ObservableObject {
    @Published var selectedContent: Content? {
        didSet {
            // Once the detailView content gets set,
            // then update the showing state to true
            isShowingDetailView = true
        }
    }
    @Published var isGridMode: Bool = true // TODO - Move into a App Settings Model
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
    ]

    init(selectedContent: Content? = nil) {
        self.selectedContent = selectedContent
    }
}
