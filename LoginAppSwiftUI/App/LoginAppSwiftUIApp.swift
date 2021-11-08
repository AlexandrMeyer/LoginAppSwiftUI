//
//  LoginAppSwiftUIApp.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

@main
struct LoginAppSwiftUIApp: App {
    private var user = StorageManager.shared.getUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
