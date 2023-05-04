//
//  Reward+CoreDataWarpped.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import Foundation
import CoreData

extension Reward {
    
    public var wrappedName: String {
        get {
            name ?? "Unknown Name"
        } set {
            name = newValue
        }
    }
    public var wrappedValue: Int {
        get {
            Int(value)
        } set {
            value = Int16(newValue)
        }
    }
    public var questRewardArray: [Quest] {
        let set = questReward as? Set<Quest> ?? []
        return Array(set)
    }
}
