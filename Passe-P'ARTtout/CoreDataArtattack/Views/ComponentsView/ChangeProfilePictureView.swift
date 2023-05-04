//
//  *ChangeProfilePictureView.swift
//  CoreDataArtattack
//
//  Created by Valentine on 29/03/2023.
//

import SwiftUI

struct ChangeProfilePictureView: View {
    
    @Environment(\.dismiss) var dismiss
    var picture: Illustration
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
                            self.profileIllustration = picture.profileIllustration
                            dismiss()
                        } label: {
                            Text("Valider")
                                .backgroundStyle(.mint)
                            
                        }
                        .offset(x: 110)
                    }
                    
                    .padding()
                    Spacer()
                    Image(picture.profileIllustration)
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

struct _ChangeProfilePictureView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
