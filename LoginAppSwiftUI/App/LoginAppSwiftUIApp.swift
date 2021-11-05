//
//  LoginAppSwiftUIApp.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

@main
struct LoginAppSwiftUIApp: App {
    @StateObject private var storage = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(storage)
        }
    }
}
