//
//  ProfileVM.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 27/03/2023.
//
import Foundation
import CoreData

class ProfileVM: ObservableObject {
    
    @Published var userId: Int = 1
    @Published var user: User?
    @Published var placesSeen: [Place] = []
    @Published var placesFavorite: [Place] = []
    @Published var placesHated: [Place] = []
    @Published var placesLoved: [Place] = []
    @Published var searchText: String = ""
    let userServices: UserServices
    
    init() {
        self.userServices = UserServices(context: PersistenceController.shared.container.viewContext)
        fetchUserData()
    }
    
    func fetchUserData() {
        userServices.getUserData(userId: userId) { user in
            DispatchQueue.main.async {
                self.user = user
            }
        }
    }
    
    func fetchUserPlaceSeen() {
        userServices.getPlacesSeen(for: userId) { places in
            DispatchQueue.main.async {
                if let places = places {
                    self.placesSeen = places
                }
            }
        }
    }
    func fetchUserPlaceFavorite() {
        userServices.getPlacesFavorite(for: userId) { places in
            DispatchQueue.main.async {
                if let places = places {
                    self.placesFavorite = places
                }
            }
        }
    }
    func fetchUserPlaceHated() {
        userServices.getPlacesHated(for: userId) { places in
            DispatchQueue.main.async {
                if let places = places {
                    self.placesHated = places
                }
            }
        }
    }
    func fetchUserPlaceLoved() {
        userServices.getPlacesLoved(for: userId) { places in
            DispatchQueue.main.async {
                if let places = places {
                    self.placesLoved = places
                }
            }
        }
    }
}



