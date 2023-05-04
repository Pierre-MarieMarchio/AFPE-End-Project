//
//  Prize+CoreDataWarpped.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//


import Foundation
import CoreData

extension Prize {
    
    public var wrappedCategory: String {
        get {
            category ?? "Unknown Category"
        } set {
            category = newValue
        }
    }
    public var wrappedIllustration: String {
        get {
            illustration ?? "Unknown Illustration"
        } set {
            illustration = newValue
        }
    }
    public var wrappedName: String {
        get {
            name ?? "Unknown Name"
        } set {
            name = newValue
        }
    }
    public var wrappedPrice: Int {
        get {
            Int(price)
        } set {
            price = Int16(newValue)
        }
    }
}
