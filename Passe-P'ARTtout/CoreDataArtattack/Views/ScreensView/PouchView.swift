//
//  PouchView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 24/03/2023.
//

import SwiftUI

struct PouchView: View {
    
    var artCategory = ["Architecture", "Musique", "Littérature", "Spectacle", "Cinema", "BandeDessinee" ]
    var architecturePouch = [Architecture(name: "Compas", value: "1", image: "compas"), Architecture(name: "Carnet", value: "5", image: "carnet")]
    var musiquePouch = [Musique(name: "Vinyle", value: "3", image: "vinyl"), Musique(name: "Micro", value: "1", image: "micro"), Musique(name: "Piano", value: "4", image: "piano")]
    var litteraturePouch = [Litterature(name: "Encre", value: "2", image: "encre")]
    var spectaclePouch = [Spectacle(name: "Masques", value: "3", image: "masque")]
    var cinemaPouch = [Cinema(name: "Claquette", value: "10", image: "claquette")]
   // var bdPouch = [BandeDesssinee(name: "", value: "", image: ""), BandeDesssinee(name: "", value: "", image: ""), BandeDesssinee(name: "", value: "", image: "")]
    var body: some View {
        
        ZStack(alignment: .leading) {
            CustomColor.fondGris
                .ignoresSafeArea()
            
            
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        
                        
                        DividerTitleComponent(title: "Architecture", offsetNegatif: -230, offsetPositif: 230)
                            .offset(x: -15)
                        LazyHStack(spacing: -82) {
                            
                            
                            ForEach(architecturePouch) { component in
                                
                                PouchComponents(name: component.name, value: component.value, image: component.image)
                                    .scaledToFit()
                                
                            }
                            .offset(x: -90)
                            .frame(minWidth: 170, minHeight: 170)
                        }
                        
                        DividerTitleComponent(title: "Musique", offsetNegatif: -230, offsetPositif: 230)
                            .offset(x: -15)
                        LazyHStack(spacing: -82) {
                            
                            
                            ForEach(musiquePouch) { component in
                                
                                PouchComponents(name: component.name, value: component.value, image: component.image)
                                    .scaledToFit()
                                
                            }
                            .offset(x: -25)
                            .frame(minWidth: 170, minHeight: 170)
                        }
                        
                        DividerTitleComponent(title: "Littérature", offsetNegatif: -230, offsetPositif: 230)
                            .offset(x: -15)
                        LazyHStack(spacing: -82) {
                            
                            
                            ForEach(litteraturePouch) { component in
                                
                                PouchComponents(name: component.name, value: component.value, image: component.image)
                                    .scaledToFit()
                                
                            }
                            .offset(x: -150)
                            .frame(minWidth: 170, minHeight: 170)
                        }
                        
                        DividerTitleComponent(title: "Spectacle", offsetNegatif: -230, offsetPositif: 230)
                            .offset(x: -15)
                        LazyHStack(spacing: -82) {
                            
                            
                            ForEach(spectaclePouch) { component in
                                
                                PouchComponents(name: component.name, value: component.value, image: component.image)
                                    .scaledToFit()
                                
                            }
                            .offset(x: -150)
                            .frame(minWidth: 170, minHeight: 170)
                        }
                        
                        DividerTitleComponent(title: "Cinéma", offsetNegatif: -230, offsetPositif: 230)
                            .offset(x: -15)
                        LazyHStack(spacing: -82) {
                            
                            
                            ForEach(cinemaPouch) { component in
                                
                                PouchComponents(name: component.name, value: component.value, image: component.image)
                                    .scaledToFit()
                                
                            }
                            .offset(x: -150)
                            .frame(minWidth: 170, minHeight: 170)
                        }
                    }
                    
                }
                .offset(x: -20)
            }
        .navigationTitle("Magot")
    }
    }
}
    
struct PouchView_Previews: PreviewProvider {
    static var previews: some View {
        PouchView()
    }
}
