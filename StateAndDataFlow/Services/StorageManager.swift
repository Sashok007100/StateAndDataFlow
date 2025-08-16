//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Alexandr Artemov (Mac Mini) on 14.08.2025.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("userData") private var userData: Data = Data()
    
    private init() {}
    
    func fetch() -> User {
        do {
            return try JSONDecoder().decode(User.self, from: userData)
        } catch {
            print(error)
            return User(name: "", isLoggedIn: false)
        }
    }
    
    func create(name: String) {
        let user = User(name: name, isLoggedIn: true)
        
        do {
            userData = try JSONEncoder().encode(user)
        } catch {
            print(error)
        }
    }
    
    func delete() {
        let user = User(name: "", isLoggedIn: false)
        
        do {
            userData = try JSONEncoder().encode(user)
        } catch {
            print(error)
        }
    }
}
