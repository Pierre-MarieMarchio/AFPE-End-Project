//
//  ChangeWallpaperView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 28/03/2023.
//

import SwiftUI

struct ChangeWallpaperView: View {
    @Environment(\.dismiss) var dismiss
   var image: Illustration
    @Binding var wallpaper: String
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
                            self.wallpaper = image.wallpaper
                            dismiss()
                        } label: {
                            Text("Valider")
                                .backgroundStyle(.mint)
                            
                        }
                        .offset(x: 110)
                    }
                    
                    .padding()
                    Spacer()
                    Image(image.wallpaper)
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


struct ChangeWallpaperViewPreview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
