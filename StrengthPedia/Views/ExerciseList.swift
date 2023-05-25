//
//  ExerciseList.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List(exercises) { exercise in
                NavigationLink {
                    ExerciseDetail(exercise: exercise)
                } label: {
                    ExerciseRow(exercise: exercise)
                }
            }
            .navigationTitle("Exercises")
        }
        
    }
}

struct ExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseList()
    }
}
