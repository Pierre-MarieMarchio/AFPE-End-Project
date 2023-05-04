//
//  ProfileResumListView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import SwiftUI

struct ProfileResumListView: View {
    
    let localFont = "Futura"
    let localFontSize = 17.0
    
    @EnvironmentObject var profileVM : ProfileVM
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // distance parcourue
            HStack{
                Image(systemName: "figure.walk.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("mondrillanYellow"))
                Text("Distance parcourue (km) : ")
                    .font(Font.custom(localFont, size:localFontSize))
                Spacer()
                Text((String(format: "%.2f", profileVM.user?.wrappedMileage ?? 0)))
                    .font(Font.custom(localFont, size:localFontSize))
                    .fontWeight(.bold)
            }
            .padding(5)
            
            // sites visités
            HStack{
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("mondrillanRed"))
                Text("Sites visités : ")
                    .font(Font.custom(localFont, size:localFontSize))
                Spacer()
                Text("\(profileVM.user?.wrappedTotalPlaceSeen ?? 0)")
                    .font(Font.custom(localFont, size:localFontSize))
                    .fontWeight(.bold)
            }
            .padding(5)
            // quêtes complétées
            HStack{
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("mondrillanBlue"))
                Text("Quêtes complétées : ")
                    .font(Font.custom(localFont, size:localFontSize))
                Spacer()
                Text("\(profileVM.user?.wrappedTotalQuestCompleted ?? 0)")
                    .font(Font.custom(localFont, size:localFontSize))
                    .fontWeight(.bold)
            }
            .padding(5)
            // nombre de participations aux événements
            HStack{
                Image(systemName: "checkmark.seal.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("mondrillanYellow"))
                Text("Participations aux événements : ")
                    .font(Font.custom(localFont, size:localFontSize))
                Spacer()
                Text("\(profileVM.user?.wrappedTotalQuestEvent ?? 0)")
                    .font(Font.custom(localFont, size:localFontSize))
                    .fontWeight(.bold)
            }
            .padding(5)
        }
    }
}

struct ProfileResumListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileResumListView()
            .environmentObject(ProfileVM())
    }
}

//        .onAppear(perform: profileVM.fetchUserData)
