//
//  StarterView.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 3.11.21.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var storage: StorageManager
    
    var body: some View {
        Group {
            if storage.stringForKey != nil {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(StorageManager())
    }
}
