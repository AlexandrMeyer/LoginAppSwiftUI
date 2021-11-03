//
//  LoginView.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @EnvironmentObject private var login: LoginManager
    
    var body: some View {
        VStack {
            TextField("Enter login", text: $userName)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            login.name = userName
            login.isRegister.toggle()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
