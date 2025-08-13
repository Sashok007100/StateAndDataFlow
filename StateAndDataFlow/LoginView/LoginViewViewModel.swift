//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 12.08.2025.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    var name = ""
    @Published var isLoggedIn = false
}
