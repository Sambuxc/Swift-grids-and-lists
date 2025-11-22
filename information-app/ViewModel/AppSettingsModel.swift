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

final class AppSettingsModel: ObservableObject {
    @Published var isGridMode: Bool = false
    
    // TODO - get the mobile settings dark mode
}
