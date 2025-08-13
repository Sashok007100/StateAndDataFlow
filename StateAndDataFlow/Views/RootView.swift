//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 12.08.2025.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        if loginViewVM.isLoggedIn {
            ContentView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
