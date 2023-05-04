//
//  Quest+CoreDataWarpped.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import Foundation

extension Quest {
    
    public var wrappedQuestDescription: String {
        get {
            questDescription ?? "Unknown Description"
        } set {
          questDescription = newValue
        }
    }
    public var wrappedType: Int {
        get {
            Int(type)
        } set {
            type = Int16(newValue)
        }
    }
    public var wrappedReward: Reward {
       get {
           reward ?? Reward()
       } set {
           reward = newValue
       }
    }
    public var wrappedCompletedBy: User {
        get {
            completedBy ?? User()
        } set {
            completedBy = newValue
        }
    }
    public var wrappedQuestPlace: Place {
        get {
            questPlace ?? Place()
        } set {
            questPlace = newValue
        }
    }
  
}
