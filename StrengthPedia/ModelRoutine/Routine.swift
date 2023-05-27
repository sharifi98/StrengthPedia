//
//  Routine.swift
//  StrengthPedia
//
//  Created by Hossein Sharifi on 27/05/2023.
//

import Foundation
import SwiftUI

struct Routine: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var bodyPart: String
    var description: String
    var isFavorite: Bool
    
}
