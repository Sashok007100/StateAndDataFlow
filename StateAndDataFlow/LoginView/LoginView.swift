//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 12.08.2025.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $loginViewVM.name)
                    .multilineTextAlignment(.center)
                
                Text(loginViewVM.name.count.formatted())
                    .foregroundStyle(
                        loginViewVM.name.count >= 3 ? .green : .red
                    )
            }
            .padding()
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(loginViewVM.name.count >= 3 ? false : true)
        }
    }
    
    private func login() {
        if !loginViewVM.name.isEmpty {
            loginViewVM.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
