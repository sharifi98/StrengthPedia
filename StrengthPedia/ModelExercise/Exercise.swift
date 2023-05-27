//
//  Exercise.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 24/05/2023.
//

import Foundation
import SwiftUI

struct Exercise: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var bodyPart: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

