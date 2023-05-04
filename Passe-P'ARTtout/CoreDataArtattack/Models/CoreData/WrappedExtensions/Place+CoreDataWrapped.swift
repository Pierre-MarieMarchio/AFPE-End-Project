//
//  Plces+CoreDataWarpped.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import Foundation
import CoreData

extension Place {
    
    public var wrappedCategory: String {
        get {
            category ?? "Unknown Category"
        } set {
            category = newValue
        }
    }
    public var wrappedCity: String {
        get {
            city ?? "Unknown City"
        } set {
            city = newValue
        }
    }
    public var wrappedIllustration: String {
        get {
            illustration ?? "Unknown Illustration"
        } set {
            illustration = newValue
        }
    }
    public var wrappedLocationLat: Double {
        get {
            locationLat
        } set {
            locationLat = newValue
        }
    }
    public var wrappedLocationLon: Double {
      get  {
          locationLon
      } set {
          locationLon = newValue
      }
    }
    public var wrappedName: String {
        get {
            name ?? "Unknown Name"
        } set {
            name = newValue
        }
    }
    public var wrappedPlacedescription: String {
        get {
            placeDescription ?? "Unknown Description"
        } set {
            placeDescription = newValue
        }
    }
    public var wrappedStreet: String {
        get {
            street ?? "Unknown Street"
        } set {
            street = newValue
        }
    }
  

    public var questsArray: [Quest] {
        let set = quests as? Set<Quest> ?? []
        return Array(set)
    }
}
