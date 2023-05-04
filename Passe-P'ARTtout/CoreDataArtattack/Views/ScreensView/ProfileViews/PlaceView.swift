//
//  PlaceView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import SwiftUI

struct PlaceView: View {
    
    @State private var searchable = ""
    @StateObject private var profileVM = ProfileVM()
    
    var body: some View {
        
            VStack{
                PlacesPikerButtonView(options: [
                    "j'aime",
                    "j'aime pas",
                    "Historique",
                    "Favoris"
                ], profilVM: profileVM)
                Spacer()
            }
            .navigationTitle("Mes Lieux")
            .searchable(text: $profileVM.searchText)
            .font(Font.custom("Futura", size: 13))
        
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
