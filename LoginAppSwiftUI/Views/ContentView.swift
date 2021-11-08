//
//  ContentView.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(title: timer.buttonTitle, color: .red) {
                timer.startTimer()
            }
            Spacer()
            ButtonView(title: "LogOut", color: .blue) {
                StorageManager.shared.clear(userManager: userManager)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


