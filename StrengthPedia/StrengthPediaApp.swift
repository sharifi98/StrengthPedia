//
//  StrengthPediaApp.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

@main
struct StrengthPediaApp: App {
    @StateObject private var modelDataExercise = ModelDataExercise()
    @StateObject private var modelDataRoutine = ModelDataRoutine()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelDataExercise)
                .environmentObject(modelDataRoutine)
        }
    }
}
