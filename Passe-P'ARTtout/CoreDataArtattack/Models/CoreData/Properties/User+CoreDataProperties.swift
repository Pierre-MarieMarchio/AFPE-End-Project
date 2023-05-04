//
//  User+CoreDataProperties.swift
//  CoreDataArtattack
//
//  Created by Apprenant 13 on 27/03/2023.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var mileage: Float
    @NSManaged public var pouch: Int16
    @NSManaged public var startDate: Date?
    @NSManaged public var totalPlaceSeen: Int16
    @NSManaged public var totalQuestCompleted: Int16
    @NSManaged public var totalQuestEvent: Int16
    @NSManaged public var userID: Int16
    @NSManaged public var placesFavorite: NSSet?
    @NSManaged public var placesHated: NSSet?
    @NSManaged public var placesLoved: NSSet?
    @NSManaged public var placesSeen: NSSet?
    @NSManaged public var prizesOwned: NSSet?
    @NSManaged public var questsCompleted: NSSet?

}

// MARK: Generated accessors for placesFavorite
extension User {

    @objc(addPlacesFavoriteObject:)
    @NSManaged public func addToPlacesFavorite(_ value: Place)

    @objc(removePlacesFavoriteObject:)
    @NSManaged public func removeFromPlacesFavorite(_ value: Place)

    @objc(addPlacesFavorite:)
    @NSManaged public func addToPlacesFavorite(_ values: NSSet)

    @objc(removePlacesFavorite:)
    @NSManaged public func removeFromPlacesFavorite(_ values: NSSet)

}

// MARK: Generated accessors for placesHated
extension User {

    @objc(addPlacesHatedObject:)
    @NSManaged public func addToPlacesHated(_ value: Place)

    @objc(removePlacesHatedObject:)
    @NSManaged public func removeFromPlacesHated(_ value: Place)

    @objc(addPlacesHated:)
    @NSManaged public func addToPlacesHated(_ values: NSSet)

    @objc(removePlacesHated:)
    @NSManaged public func removeFromPlacesHated(_ values: NSSet)

}

// MARK: Generated accessors for placesLoved
extension User {

    @objc(addPlacesLovedObject:)
    @NSManaged public func addToPlacesLoved(_ value: Place)

    @objc(removePlacesLovedObject:)
    @NSManaged public func removeFromPlacesLoved(_ value: Place)

    @objc(addPlacesLoved:)
    @NSManaged public func addToPlacesLoved(_ values: NSSet)

    @objc(removePlacesLoved:)
    @NSManaged public func removeFromPlacesLoved(_ values: NSSet)

}

// MARK: Generated accessors for placesSeen
extension User {

    @objc(addPlacesSeenObject:)
    @NSManaged public func addToPlacesSeen(_ value: Place)

    @objc(removePlacesSeenObject:)
    @NSManaged public func removeFromPlacesSeen(_ value: Place)

    @objc(addPlacesSeen:)
    @NSManaged public func addToPlacesSeen(_ values: NSSet)

    @objc(removePlacesSeen:)
    @NSManaged public func removeFromPlacesSeen(_ values: NSSet)

}

// MARK: Generated accessors for prizesOwned
extension User {

    @objc(addPrizesOwnedObject:)
    @NSManaged public func addToPrizesOwned(_ value: Prize)

    @objc(removePrizesOwnedObject:)
    @NSManaged public func removeFromPrizesOwned(_ value: Prize)

    @objc(addPrizesOwned:)
    @NSManaged public func addToPrizesOwned(_ values: NSSet)

    @objc(removePrizesOwned:)
    @NSManaged public func removeFromPrizesOwned(_ values: NSSet)

}

// MARK: Generated accessors for questsCompleted
extension User {

    @objc(addQuestsCompletedObject:)
    @NSManaged public func addToQuestsCompleted(_ value: Quest)

    @objc(removeQuestsCompletedObject:)
    @NSManaged public func removeFromQuestsCompleted(_ value: Quest)

    @objc(addQuestsCompleted:)
    @NSManaged public func addToQuestsCompleted(_ values: NSSet)

    @objc(removeQuestsCompleted:)
    @NSManaged public func removeFromQuestsCompleted(_ values: NSSet)

}

extension User : Identifiable {

}
