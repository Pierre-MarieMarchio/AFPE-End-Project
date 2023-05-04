//
//  Quest+CoreDataProperties.swift
//  CoreDataArtattack
//
//  Created by Apprenant 13 on 27/03/2023.
//
//

import Foundation
import CoreData


extension Quest {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Quest> {
        return NSFetchRequest<Quest>(entityName: "Quest")
    }

    @NSManaged public var questDescription: String?
    @NSManaged public var type: Int16
    @NSManaged public var completedBy: User?
    @NSManaged public var questPlace: Place?
    @NSManaged public var reward: Reward?

}

extension Quest : Identifiable {

}
