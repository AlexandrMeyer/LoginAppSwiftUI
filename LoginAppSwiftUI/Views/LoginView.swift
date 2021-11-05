//
//  LoginView.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your login", text: $userName)
                    .multilineTextAlignment(.center)
                Spacer()
                Text("\(userName.count)")
                    .foregroundColor(userName.count < 3 ? .red : .green)
            }
            .padding()
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(userName.count < 3)
        }
        .padding()
    }
    
    private func registerUser() {
        storage.userDefaults.set(userName, forKey: "userName")
        storage.stringForKey = userName
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
