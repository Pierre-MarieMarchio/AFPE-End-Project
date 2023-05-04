//
//  ChangeAvatarView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 29/03/2023.
//

import SwiftUI

struct ChangeAvatarView: View {
    @Environment(\.dismiss) var dismiss
    var image: Illustration
     @Binding var profileIllustration: String
     var body: some View {
         ZStack {
             Color.black
                 .ignoresSafeArea()
             GeometryReader { geometry in
                 VStack {
                     HStack {
                         Button {
                             dismiss()
                         } label: {
                             Text("Quitter")
                             
                         }
                         .offset(x: -110)
                         Button {
                             self.profileIllustration = image.profileIllustration
                             dismiss()
                         } label: {
                             Text("Valider")
                                 .backgroundStyle(.mint)
                             
                         }
                         .offset(x: 110)
                     }
                     
                     .padding()
                     Spacer()
                     Image(image.profileIllustration)
                         .resizable()
                         .frame(maxWidth: .infinity, maxHeight: .infinity)
                         .scaledToFit()
                         .border(.brown, width: 5)
                     Spacer()
                     
                     
                     
                         .toolbar(.hidden)
                 }
             }
         }
     }
 }


struct ChangeAvatarView_Previews: PreviewProvider {
    static var previews: some View {
       SettingsView()
    }
}
