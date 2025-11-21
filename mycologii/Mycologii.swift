//
//  iMushroomApp.swift
//  iMushroom
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

@main
struct Mycologii: App {
    @StateObject private var appSettingsModel = AppSettingsModel()
    
    var body: some Scene {
        WindowGroup {
            // TODO - read up on what WindowGroup is doing and why its here by default
            if appSettingsModel.isGridMode {
                MainGridView()
            } else {
                ListView()
            }
        }
    }
}

#Preview {
    @Previewable @StateObject var appSettingsModel = AppSettingsModel()
    
    // Preview the initial content view in dark mode. Adjust as needed.
    if appSettingsModel.isGridMode {
        MainGridView()
    } else {
        ListView()
    }
}
