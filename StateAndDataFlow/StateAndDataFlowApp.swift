//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 12.08.2025.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var contentViewVM = ContentViewViewModel()
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(contentViewVM)
        .environmentObject(loginViewVM)
    }
}
