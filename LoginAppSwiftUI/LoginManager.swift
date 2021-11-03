//
//  LoginManager.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import Combine

class LoginManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
