//
//  ExerciseRow.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseRow: View {
    var exercise: Exercise
    var body: some View {
        HStack {
            // TODO add a category for what type of muscle group
            exercise.image
                .resizable()
                .frame(width: 60, height: 60)
                .border(.black, width: 1)
            Text(exercise.name)
            Spacer()
        }
    }
}

struct ExerciseRow_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRow(exercise: exercises[0])
    }
}
