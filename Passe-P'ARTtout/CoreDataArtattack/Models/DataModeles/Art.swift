//
//  Art.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 29/03/2023.
//

import Foundation
import SwiftUI

struct Art: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var color: Color
    var selected: Bool = true
  
}
