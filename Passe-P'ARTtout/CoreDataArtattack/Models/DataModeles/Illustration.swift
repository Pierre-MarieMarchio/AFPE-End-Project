//
//  IllustrationStruct.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 28/03/2023.
//

import Foundation

struct Illustration: Identifiable, Equatable {
    var id = UUID()
    var wallpaper: String
    var profileIllustration: String
}
