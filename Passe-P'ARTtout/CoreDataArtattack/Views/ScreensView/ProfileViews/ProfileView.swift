//
//  ProfileView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import SwiftUI
import CoreData

struct ProfileView: View {
    
    @StateObject var profileVM = ProfileVM()
    @AppStorage(UserDefaults.Keys.profileIllustration.rawValue) var profileIllustration = ""
    
    var body: some View {
        
        
        VStack{
            ZStack {
                Image("deco_mondrian")
                    .resizable()
                    .frame(maxWidth: 400, maxHeight: 400)
                    .offset(y: -30)
                Circle()
                    .frame(maxWidth:205, maxHeight: 205)
                Image(profileIllustration)
                    .resizable()
                    .mask(Circle())
                    .frame(maxWidth:200, maxHeight: 200)
            }
            
            Spacer()
            VStack{
                HStack {
                    NavigationLink(destination: PlaceView()) {
                        PlaceButton()
                            .offset(x: -30)
                    }
                    NavigationLink(destination: SettingsView()){
                        SettingButton()
                            .offset(x: 40)
                    }
                }
                DividerTitleComponent(title: "Résumé", offsetNegatif: -210, offsetPositif: 210)
                ProfileResumListView()
                    .padding()
                Spacer()
            }
            Spacer()
                .navigationTitle("Profil")
        }
        .font(Font.custom("Futura", size: 13))
        .environmentObject(profileVM)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
    }
}



