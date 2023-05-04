//
//  Prize+CoreDataProperties.swift
//  CoreDataArtattack
//
//  Created by Apprenant 13 on 27/03/2023.
//
//

import Foundation
import CoreData


extension Prize {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Prize> {
        return NSFetchRequest<Prize>(entityName: "Prize")
    }

    @NSManaged public var category: String?
    @NSManaged public var illustration: String?
    @NSManaged public var name: String?
    @NSManaged public var price: Int16
    @NSManaged public var ownedBy: NSSet?

}

// MARK: Generated accessors for ownedBy
extension Prize {

    @objc(addOwnedByObject:)
    @NSManaged public func addToOwnedBy(_ value: User)

    @objc(removeOwnedByObject:)
    @NSManaged public func removeFromOwnedBy(_ value: User)

    @objc(addOwnedBy:)
    @NSManaged public func addToOwnedBy(_ values: NSSet)

    @objc(removeOwnedBy:)
    @NSManaged public func removeFromOwnedBy(_ values: NSSet)

}

extension Prize : Identifiable {

}
