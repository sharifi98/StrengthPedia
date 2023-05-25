//
//  ExerciseImage.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseImage: View {
    var image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 300.0, height: 300.0)
                .padding()
        }
    }
}

struct ExerciseImage_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseImage(image: Image("barbellbenchpress"))
    }
}
