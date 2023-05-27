//
//  StrengthPediaApp.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

@main
struct StrengthPediaApp: App {
    @StateObject private var modelData = ModelDataExercise()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
