//
//  ExerciseDetail.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseDetail: View {
    var exercise: Exercise
    @EnvironmentObject var modelDataExercise: ModelDataExercise
    
    var exerciseIndex: Int {
        modelDataExercise.exercises.firstIndex(where: { $0.id == exercise.id})!
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            ExerciseImage(image: exercise.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            HStack {
                Text(exercise.name)
                    .font(.title)
                FavoriteButton(isSet: $modelDataExercise.exercises[exerciseIndex].isFavorite)
                
            }
            HStack {
                Text(exercise.bodyPart)
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text(exercise.description)
        }
        .padding()
    
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static let modelDataExercise = ModelDataExercise()
    
    static var previews: some View {
        ExerciseDetail(exercise: modelDataExercise.exercises[0])
            .environmentObject(modelDataExercise)

    }
}
