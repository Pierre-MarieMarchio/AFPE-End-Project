//
//  Avatar.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 29/03/2023.
//

import Foundation

struct Avatar: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var price: String
    var image: String
}
