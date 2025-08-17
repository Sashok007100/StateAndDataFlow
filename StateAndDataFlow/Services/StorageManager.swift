//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 14.08.2025.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("userData") private var userData: Data?
    
    private init() {}
    
    func fetch() -> User {
        guard let userData else { return User() }
        
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user ?? User()
    }
    
    func create(user: User) {        
        userData = try? JSONEncoder().encode(user)
    }
    
    func delete() {
        userData = nil
    }
}
