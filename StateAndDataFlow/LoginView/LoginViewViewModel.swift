//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 12.08.2025.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    @Published var user = User()
    
    private var storageManager = StorageManager.shared
    
    init(user: User = User()) {
        self.user = user
    }
    
    func fetch() -> User {
        storageManager.fetch()
    }
    
    func logOut() {
        user.name = ""
        user.isLoggedIn.toggle()
        storageManager.delete()
    }
    
    func login() {
        user.isLoggedIn.toggle()
        storageManager.create(user: user)
    }
    
    func isValid() -> Bool {
        user.name.count >= 3
    }
}
