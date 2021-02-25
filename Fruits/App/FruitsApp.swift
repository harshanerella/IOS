//
//  FruitsApp.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 11/02/21.
//

import SwiftUI

// App starts from here @main
@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
