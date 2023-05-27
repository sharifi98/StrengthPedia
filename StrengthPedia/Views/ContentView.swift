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
            ExerciseList()
                .tabItem {
                    Label("Exercise", systemImage: "note.text")
                }
            RoutineList()
                .tabItem {
                    Label("Routines", systemImage: "house")
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
