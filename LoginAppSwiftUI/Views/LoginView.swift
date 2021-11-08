//
//  LoginView.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            UserNameTF(
                name: $userManager.user.name,
                nameIsValid: userManager.nameIsValid
            )
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(!userManager.nameIsValid)
        }
        .padding()
    }
    
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            StorageManager.shared.save(user: userManager.user)
        }
    }
}

struct UserNameTF: View {
    
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        ZStack {
            TextField("Type your name...", text: $name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text("\(name.count)")
                    .font(.callout)
                    .foregroundColor(nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
