//
//  ExerciseImage.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import SwiftUI

struct ExerciseImage: View {
    var body: some View {
        VStack {
            Image("benchpressbarbell")
                .resizable()
                    .scaledToFit()
                    .frame(width: 300.0, height: 300.0)
                    .padding()
        }
    }
}

struct ExerciseImage_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseImage()
    }
}
