//
//  Reward+CoreDataProperties.swift
//  CoreDataArtattack
//
//  Created by Apprenant 13 on 27/03/2023.
//
//

import Foundation
import CoreData


extension Reward {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Reward> {
        return NSFetchRequest<Reward>(entityName: "Reward")
    }

    @NSManaged public var name: String?
    @NSManaged public var value: Int16
    @NSManaged public var questReward: NSSet?

}

// MARK: Generated accessors for questReward
extension Reward {

    @objc(addQuestRewardObject:)
    @NSManaged public func addToQuestReward(_ value: Quest)

    @objc(removeQuestRewardObject:)
    @NSManaged public func removeFromQuestReward(_ value: Quest)

    @objc(addQuestReward:)
    @NSManaged public func addToQuestReward(_ values: NSSet)

    @objc(removeQuestReward:)
    @NSManaged public func removeFromQuestReward(_ values: NSSet)

}

extension Reward : Identifiable {

}
