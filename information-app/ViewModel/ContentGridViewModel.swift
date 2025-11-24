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
    let columns: [GridItem] = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
    ]
}
