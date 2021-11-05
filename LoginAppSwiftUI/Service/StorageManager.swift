//
//  StorageManager.swift
//  LoginAppSwiftUI
//
//  Created by Александр on 4.11.21.
//

import Foundation

final class StorageManager: ObservableObject {
    @Published var stringForKey = UserDefaults.standard.string(forKey: "userName")
    let userDefaults = UserDefaults.standard
}
