//
//  ContentView.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            LogView()
                .tabItem {
                    Label("Log", systemImage: "clock.arrow.circlepath")
                }
            
            ExerciseList()
                .tabItem {
                    Label("Exercises", systemImage: "note.text")
                }
            RoutineList()
                .tabItem {
                    Label("Routines", systemImage: "slider.horizontal.3")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelDataExercise())
            .environmentObject(ModelDataRoutine())
    }
}
