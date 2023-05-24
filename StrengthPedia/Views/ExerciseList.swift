//
//  ExerciseList.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseList: View {
    
    var body: some View {
        List(exercises) { exercise in
            ExerciseRow(exercise: exercise)
        }
    }
}

struct ExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseList()
    }
}
