//
//  ExerciseRow.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseRow: View {
    var exercise: Exercise
    
    let bodyPartColors: [String: Color] =
      [ "Chest": .red,
        "Biceps": .blue,
        "Triceps": .green,
        "Legs": .orange,
        "Back": .pink,
        "Glutes": .purple,
        "Shoulders": .black,
        "Full Body": .cyan
      ]
    
    var body: some View {
        HStack {
            // TODO add a category for what type of muscle group
            exercise.image
                .resizable()
                .frame(width: 60, height: 60)
                .border(.black, width: 1)
            VStack(alignment: .leading) {
                Text(exercise.name)
                if let color = bodyPartColors[exercise.bodyPart] {
                    BodyPartText(part: exercise.bodyPart, color: color)
                }
            }
            
            Spacer()
            
            if exercise.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
        }
    }
    
    struct BodyPartText: View {
        var part: String
        var color: Color
        
        var body: some View {
            Text(part)
                .font(.caption)
                .fontWeight(.black)
                .padding(5)
                .foregroundColor(.white)
                .background(color)
                .cornerRadius(15)
        }
    }
}

struct ExerciseRow_Previews: PreviewProvider {
    static var exercises = ModelData().exercises
    
    static var previews: some View {
        ExerciseRow(exercise: ModelData().exercises[0])
    }
}
