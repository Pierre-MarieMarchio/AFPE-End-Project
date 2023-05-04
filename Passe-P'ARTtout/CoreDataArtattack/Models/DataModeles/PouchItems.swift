//
//  PouchItems.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 30/03/2023.
//

import Foundation

struct Architecture: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var value: String
    var image: String
}
struct Musique: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var value: String
    var image: String
}
struct Litterature: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var value: String
    var image: String
}
struct Spectacle: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var value: String
    var image: String
}
struct Cinema: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var value: String
    var image: String
}
struct BandeDesssinee: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var value: String
    var image: String
}

