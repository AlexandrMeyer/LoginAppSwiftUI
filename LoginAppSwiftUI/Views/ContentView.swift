//
//  ContentView.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        VStack {
            Text("Hi, \(storage.stringForKey ?? "")")
                .font(.largeTitle)
                .padding(.top, 50)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            StartButtonView(timer: timer)
            Spacer()
            LogOutButtonView()
        }
    }
}

struct StartButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text(timer.buttonTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .tint(.white)
                .frame(width: 180, height: 60)
        }
        .background(Color.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
}

struct LogOutButtonView: View {
    
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        Button(action: logOutUser) {
            Text("LogOut")
                .font(.largeTitle)
                .fontWeight(.bold)
                .tint(.white)
                .frame(width: 180, height: 60)
        }
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
    
    private func logOutUser() {
        storage.userDefaults.removeObject(forKey: "userName")
        storage.stringForKey = nil
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StorageManager())
    }
}


