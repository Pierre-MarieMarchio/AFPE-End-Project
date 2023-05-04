//
//  User+CoreDataWarpped.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import Foundation
import CoreData

extension User {
    
    public var warppedUserID: Int {
        get {
            Int(userID)
        } set {
            userID = Int16(newValue)
        }
    }
    
    public var wrappedMileage: Float {
     get   {
         mileage
        }
        set {
            mileage = newValue
        }
    }
    public var wrappedPouch: Int {
        get {
            Int(pouch)
        } set {
            pouch = Int16(newValue)
        }
    }
    public var wrappedStartDate: Date {
        get {
            startDate ?? Date()
        } set {
            startDate = newValue
        }
    }
    public var wrappedTotalPlaceSeen: Int {
        get {
            Int(totalPlaceSeen)
        } set {
            totalPlaceSeen = Int16(newValue)
        }
    }
    public var wrappedTotalQuestCompleted: Int {
        get {
            Int(totalQuestCompleted)
        } set {
            totalQuestCompleted = Int16(newValue)
        }
    }
    public var wrappedTotalQuestEvent: Int {
        get {
            Int(totalQuestEvent)
        } set {
            totalQuestEvent = Int16(newValue)
        }
    }
    public var placesSeenArray: [Place] {
        let set = placesSeen as? Set<Place> ?? []
        return Array(set)
    }
    public var placesHatedArray: [Place] {
        let set = placesHated as? Set<Place> ?? []
        return Array(set)
    }
    public var placesLovedArray: [Place] {
        let set = placesLoved as? Set<Place> ?? []
        return Array(set)
    }
    public var placesFavoriteArray: [Place] {
        let set = placesFavorite as? Set<Place> ?? []
        return Array(set)
    }
    public var prizesOwnedArray: [Prize] {
        let set = prizesOwned as? Set<Prize> ?? []
        return Array(set)
    }
    public var questsCompletedArray: [Quest] {
        let set = questsCompleted as? Set<Quest> ?? []
        return Array(set)
    }
    
}
