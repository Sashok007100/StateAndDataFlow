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
                TextField("Enter your name", text: $loginViewVM.user.name)
                    .multilineTextAlignment(.center)
                
                Text(loginViewVM.user.name.count.formatted())
                    .foregroundStyle(
                        loginViewVM.isValid() ? .green : .red
                    )
            }
            .padding()
            
            Button(action: loginViewVM.login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.isValid())
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
