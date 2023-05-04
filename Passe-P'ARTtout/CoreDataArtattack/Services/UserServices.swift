//
//  UserServices.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 27/03/2023.
//
import Foundation
import CoreData

class UserServices {
    
    let context: NSManagedObjectContext
        
        init(context: NSManagedObjectContext) {
            self.context = context
        }
    

    func getUserData(userId: Int, completion: @escaping (User?) -> Void) {
        let request: NSFetchRequest<User> = User.fetchRequest()
        request.predicate = NSPredicate(format: "userID == %d", userId)

        do {
            let users = try context.fetch(request)
            let user = users.first
            completion(user)

        } catch {
            print("il y a une grosse couille: \(error.localizedDescription)")
            completion(nil)
        }
    }
    
    func getPlacesSeen(for userId: Int, completion: @escaping ([Place]?) -> Void) {
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "userID == %d", userId)

        do {
            guard let user = try context.fetch(fetchRequest).first else {
                print("User id \(userId) not found")
                completion(nil)
                return
            }
            let placesSeen = user.value(forKeyPath: "placesSeen") as? Set<Place> ?? []
            completion(Array(placesSeen))
        } catch {
            print("Error getPlacesSeen for user id \(userId): \(error.localizedDescription)")
            completion(nil)
        }
    }
    
    func getPlacesFavorite(for userId: Int, completion: @escaping ([Place]?) -> Void) {
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "userID == %d", userId)

        do {
            guard let user = try context.fetch(fetchRequest).first else {
                print("User id \(userId) not found")
                completion(nil)
                return
            }
            let placesFavorite = user.value(forKeyPath: "placesFavorite") as? Set<Place> ?? []
            completion(Array(placesFavorite))
        } catch {
            print("Error getPlacesFavorite for user id \(userId): \(error.localizedDescription)")
            completion(nil)
        }
    }
    
    func getPlacesHated(for userId: Int, completion: @escaping ([Place]?) -> Void) {
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "userID == %d", userId)

        do {
            guard let user = try context.fetch(fetchRequest).first else {
                print("User id \(userId) not found")
                completion(nil)
                return
            }
            let placesHated = user.value(forKeyPath: "placesHated") as? Set<Place> ?? []
            completion(Array(placesHated))
        } catch {
            print("Error getPlacesHated for user id \(userId): \(error.localizedDescription)")
            completion(nil)
        }
    }
    func getPlacesLoved(for userId: Int, completion: @escaping ([Place]?) -> Void) {
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "userID == %d", userId)

        do {
            guard let user = try context.fetch(fetchRequest).first else {
                print("User id \(userId) not found")
                completion(nil)
                return
            }
            let placesLoved = user.value(forKeyPath: "placesLoved") as? Set<Place> ?? []
            completion(Array(placesLoved))
        } catch {
            print("Error getPlacesLoved for user id \(userId): \(error.localizedDescription)")
            completion(nil)
        }
    }
    
    func savePlaceLoved(userId: Int, place: Place) {
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "userID == %d", userId)
        
        do {
            guard let user = try context.fetch(fetchRequest).first else {
                print("User id \(userId) not found")
                return
            }
            
            let mutablePlaceLoved = user.mutableSetValue(forKey: "placesLoved")
            mutablePlaceLoved.add(place)
            
            try context.save()
            
            print("Place saved to user's loved places")
        } catch {
            print("Error : \(error.localizedDescription)")
        }
    }
    
}
