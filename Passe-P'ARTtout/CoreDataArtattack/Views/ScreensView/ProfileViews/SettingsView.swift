//
//  SettingsView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import SwiftUI

struct SettingsView: View {
    @State var profileImages = [Illustration(wallpaper: "WandererAboveTheSeaOfFog", profileIllustration: "SelfPortraitAdyWarhol"), Illustration(wallpaper: "Promenade", profileIllustration: "SelfPortraitPicasso"), Illustration( wallpaper: "NuitEtoilee", profileIllustration: "LeDesespere"), Illustration(wallpaper: "LaPie", profileIllustration: "CharlieChaplin"), Illustration(wallpaper: "RoyalBox", profileIllustration: "Tintin")]
    @AppStorage(UserDefaults.Keys.wallpaper.rawValue) var wallpaper: String = ""
    @AppStorage(UserDefaults.Keys.profileIllustration.rawValue) var profileIllustration: String = ""
    
    
    var body: some View {
        ZStack {
            CustomColor.fondGris
                .ignoresSafeArea()
            GeometryReader { geometry in
                ScrollView{
                    VStack {
                        ZStack {
                            Image("deco_mondrian")
                                .resizable()
                            
                            SettingArtPikerView()
                                .scaledToFit()
                                .padding(.vertical)
                        }
                        
                        Group{
                        DividerTitleComponent(title: "Fonds d'écrans", offsetNegatif: -250, offsetPositif: 250)
                       
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: -30) {
                                ForEach(profileImages) { image in
                                    NavigationLink(destination: ChangeWallpaperView(image: image, wallpaper: $wallpaper)) {
                                        
                                        SettingCarouselWallpaperView(image: image)
                                            .shadow(radius: 7)
                                            .shadow(radius: 7)
                                            .shadow(radius: 4)
                                            .shadow(radius: 2)
                                            .padding(.leading)
                                        
                                    }
                                }
                                .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 90) / -20), axis: (x: 0, y: 10.0, z: 0))
                            }
                            
                        }
                        
                        .frame(minHeight: 170)
                    }
                        
                    }
                    Group{
                        DividerTitleComponent(title: "Avatars", offsetNegatif: -250, offsetPositif: 250)
//                        Text("Avatars")
//                            .font(Font.custom("Futura", size: 20))
//                            .fontWeight(.bold)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: -30) {
                                ForEach(profileImages) { avatar in
                                    NavigationLink(destination: ChangeAvatarView(image: avatar, profileIllustration: $profileIllustration)) {
                                        SettingCarouselProfileIllustrationView(image: avatar)
                                            .shadow(radius: 7)
                                            .shadow(radius: 7)
                                            .shadow(radius: 4)
                                            .shadow(radius: 2)
                                            .padding(.leading)
                                            .scaledToFit()
                                    }
                                    
                                }
                                .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 115) / -20), axis: (x: 0, y: 10.0, z: 0))
                            }
                            .frame(minHeight: 170)
                        }
                    }
                }
            }
            .navigationTitle("Paramètres")
            
        }
    }
    
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
