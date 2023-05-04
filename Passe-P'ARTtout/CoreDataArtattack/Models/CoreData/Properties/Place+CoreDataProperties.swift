//
//  Place+CoreDataProperties.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 28/03/2023.
//
//

import Foundation
import CoreData


extension Place {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Place> {
        return NSFetchRequest<Place>(entityName: "Place")
    }

    @NSManaged public var category: String?
    @NSManaged public var city: String?
    @NSManaged public var illustration: String?
    @NSManaged public var locationLat: Double
    @NSManaged public var locationLon: Double
    @NSManaged public var name: String?
    @NSManaged public var placeDescription: String?
    @NSManaged public var street: String?
    @NSManaged public var favoriteBy: NSSet?
    @NSManaged public var hatedBy: NSSet?
    @NSManaged public var lovedBy: NSSet?
    @NSManaged public var quests: NSSet?
    @NSManaged public var seenBy: NSSet?

}

// MARK: Generated accessors for favoriteBy
extension Place {

    @objc(addFavoriteByObject:)
    @NSManaged public func addToFavoriteBy(_ value: User)

    @objc(removeFavoriteByObject:)
    @NSManaged public func removeFromFavoriteBy(_ value: User)

    @objc(addFavoriteBy:)
    @NSManaged public func addToFavoriteBy(_ values: NSSet)

    @objc(removeFavoriteBy:)
    @NSManaged public func removeFromFavoriteBy(_ values: NSSet)

}

// MARK: Generated accessors for hatedBy
extension Place {

    @objc(addHatedByObject:)
    @NSManaged public func addToHatedBy(_ value: User)

    @objc(removeHatedByObject:)
    @NSManaged public func removeFromHatedBy(_ value: User)

    @objc(addHatedBy:)
    @NSManaged public func addToHatedBy(_ values: NSSet)

    @objc(removeHatedBy:)
    @NSManaged public func removeFromHatedBy(_ values: NSSet)

}

// MARK: Generated accessors for lovedBy
extension Place {

    @objc(addLovedByObject:)
    @NSManaged public func addToLovedBy(_ value: User)

    @objc(removeLovedByObject:)
    @NSManaged public func removeFromLovedBy(_ value: User)

    @objc(addLovedBy:)
    @NSManaged public func addToLovedBy(_ values: NSSet)

    @objc(removeLovedBy:)
    @NSManaged public func removeFromLovedBy(_ values: NSSet)

}

// MARK: Generated accessors for quests
extension Place {

    @objc(addQuestsObject:)
    @NSManaged public func addToQuests(_ value: Quest)

    @objc(removeQuestsObject:)
    @NSManaged public func removeFromQuests(_ value: Quest)

    @objc(addQuests:)
    @NSManaged public func addToQuests(_ values: NSSet)

    @objc(removeQuests:)
    @NSManaged public func removeFromQuests(_ values: NSSet)

}

// MARK: Generated accessors for seenBy
extension Place {

    @objc(addSeenByObject:)
    @NSManaged public func addToSeenBy(_ value: User)

    @objc(removeSeenByObject:)
    @NSManaged public func removeFromSeenBy(_ value: User)

    @objc(addSeenBy:)
    @NSManaged public func addToSeenBy(_ values: NSSet)

    @objc(removeSeenBy:)
    @NSManaged public func removeFromSeenBy(_ values: NSSet)

}

extension Place : Identifiable {

}
