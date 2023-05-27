//
//  RoutineDetail.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 27/05/2023.
//

import SwiftUI


struct RoutineDetail: View {
    var routine: Routine
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {

                RoutineExerciseList(routine: routine)
                    .environmentObject(ModelDataExercise())
                
                Spacer()
                
                                
                Text(routine.description)
                //ExerciseRow(exercise: exercise)
                startWorkoutButton()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

struct startWorkoutButton: View {
    var body: some View {
        Button("Start this workout") {
            //
        }
        .padding(15)
        .font(.caption)
        .fontWeight(.black)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(15)
    }
}

struct RoutineDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelDataRoutine = ModelDataRoutine()
        RoutineDetail(routine: modelDataRoutine.routines[0])
            .environmentObject(ModelDataExercise())
    }
}
