//
//  FructusApp.swift
//  Fructus
//
//  Created by Leonardo Soares on 06/05/24.
//

import SwiftUI

@main
struct FructusApp: App {
    
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()                
            } else {
                ContentView()
            }
        }
    }
}

/*
 Views: defines a piece of UI in the app.
        Base build blocks that form complexes UIs
 Scenes: Group of views.
         Can be grouped with other scenes.
 Window group: a scene that manages the windows in the main app.
 
 */
