//
//  SwiftUIView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 24/03/2023.
//

import SwiftUI


struct MenuView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage(UserDefaults.Keys.wallpaper.rawValue) var wallpaper = "WandererAboveTheSeaOfFog"
    var body: some View {
        GeometryReader { reader in
            ZStack(alignment: .leading) {
            Image(wallpaper)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                        Spacer()
                        NavigationLink(destination: QuestView(selectedOption: 0)) {
                            Image("questMenuButton")
                                .frame(height: reader.size.height * 0.136)
                           
                         
                        
                    }
                    NavigationLink(destination: PouchView()) {
                        Image("pouchMenuButton")
                            .frame(height: reader.size.height * 0.136)
                      

                    }
                    NavigationLink(destination: ShopView()) {
                        Image("shopMenuButton")
                            .frame(height: reader.size.height * 0.136)
                           

                    }
                    Spacer()
                    Button {
                        dismiss()
                    } label: {
                        Image("mapMenuButton")
                            .frame(height: reader.size.height * (1/5))
                           

                    }
                    Spacer()
                    
                    .toolbar(.hidden, for: .navigationBar)
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
