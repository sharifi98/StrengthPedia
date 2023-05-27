//
//  RoutineExerciseList.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 27/05/2023.
//

import SwiftUI

struct RoutineExerciseList: View {
    @EnvironmentObject var modelDataExercise: ModelDataExercise
    var routine: Routine
    
    var matchingExercises: [Exercise] {
        modelDataExercise.exercises.filter { exercises in
            routine.bodyPart.contains(exercises.bodyPart)
        }
    }
    
    var body: some View {
        List {
            ForEach(matchingExercises) { exercise in
                Text(exercise.name)
            }
        }
    }
}

struct RoutineExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        let modelDataRoutine = ModelDataRoutine()
        let modelDataExercise = ModelDataExercise()
        RoutineExerciseList(routine: modelDataRoutine.routines[0])
            .environmentObject(modelDataExercise)
    }
}

