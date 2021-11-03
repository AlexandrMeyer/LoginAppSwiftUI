//
//  LoginAppSwiftUIApp.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

@main
struct LoginAppSwiftUIApp: App {
    @StateObject private var login = LoginManager()
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(login)
        }
    }
}
