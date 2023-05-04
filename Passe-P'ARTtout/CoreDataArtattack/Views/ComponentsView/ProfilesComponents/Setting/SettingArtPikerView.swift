//
//  SettingArtPikerView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 24/03/2023.
//

import SwiftUI

struct SettingArtPikerView: View {
    @State var arts: [Art] = [Art(name: "Architecture", icon: "", color: .white), Art(name: "Sculpture", icon: ".black", color: .white), Art(name: "Art Visuels", icon: "", color: .white), Art(name: "Musique", icon: "", color: .white), Art(name: "Littérature", icon: "", color: .white), Art(name: "Arts de la scène", icon: "", color: .white), Art(name: "Cinéma", icon: "", color: .white), Art(name: "Médiatique & Photographie", icon: "", color: .white), Art(name: "Bande-dessinée", icon: "", color: .white)]

    var body: some View {
       
        
            VStack(alignment: .leading) {
                ForEach(arts.indices) { art in
                  
              
                                
                    Button { arts[art].selected.toggle()
                        
                    } label: {
                        HStack {
                            Text(arts[art].name)
                                .foregroundColor(arts[art].selected ? .black : .gray)
                                .font(Font.custom("Futura", size: 13))
                            Image(systemName: arts[art].icon)
                        }
                    }
                .frame(maxWidth: 250, maxHeight: 330)
                .background(arts[art].color)
                .border(.black, width: 2)
                .cornerRadius(4)
                   
                
            }
            }
            .frame(maxWidth: 250, maxHeight: 330)
         
        }
    }


struct SettingArtPikerView_Previews: PreviewProvider {
   static var previews: some View {
       SettingsView()
   }
}
