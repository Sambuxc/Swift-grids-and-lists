//
//  InformationApp.swift
//  information-app
//
//  Created by Samuel Bruton on 14/11/2025.
//

import SwiftUI

@main
struct InformationApp: App {
    @StateObject private var appSettingsModel = AppSettingsModel()
    
    var body: some Scene {
        WindowGroup {
            if appSettingsModel.isGridMode {
                MainGridView().preferredColorScheme(.dark)
            } else {
                ListView().preferredColorScheme(.dark)
            }
        }
        .environmentObject(appSettingsModel)
    }
}

#Preview {
    @Previewable @StateObject var appSettingsModel = AppSettingsModel()
    
    if appSettingsModel.isGridMode {
        MainGridView()
            .environmentObject(AppSettingsModel())
    } else {
        ListView()
            .environmentObject(AppSettingsModel())
    }
        
}
