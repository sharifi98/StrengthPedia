//
//  ExerciseList.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseList: View {
    @EnvironmentObject var modelDataExercise: ModelDataExercise
    @State private var showFavoritesOnly = false
    
    var filteredExercises: [Exercise] {
        modelDataExercise.exercises.filter { exercise in
            (!showFavoritesOnly || exercise.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredExercises) { exercise in
                    NavigationLink {
                        ExerciseDetail(exercise: exercise)
                    } label: {
                        ExerciseRow(exercise: exercise)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Exercises")
            
        }
        
    }
}

struct ExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseList()
            .environmentObject(ModelDataExercise())
    }
}
