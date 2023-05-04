//
//  MapModel.swift
//  MapKitDemo
//
//  Created by Apprenant 13 on 24/03/2023.
//
// pour info, position Toulouse centre à rentrer dans le simu: lat = 43,62238, long=  1,45377

import Foundation
import MapKit
import SwiftUI

struct PlaceAnnotation: Identifiable { // est une structure propre à la vue MapView
    let id = UUID()
    let placeObject: Place
    var selected: Bool = false
    var name:String
    var location: CLLocationCoordinate2D
    var SFsymbol:String = "pin"// nom du SF Symbol pour représenter l'objet
    
    var symbolColor:Color = Color("mondrillanRed") // couleur du symbole
    var symbolSize: CGFloat = 40
    /*
    init(name:String, placeObject:Place,location:CLLocationCoordinate2D, SFSymbol: String = "mappin.circle", symbolColor:Color = Color.red) {
        self.name = name
        self.placeObject = placeObject
        self.location = location
        self.SFsymbol = SFSymbol
    }
    */
}
