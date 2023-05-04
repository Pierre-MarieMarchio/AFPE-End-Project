//
//  ProfileButtons.swift
//  CoreDataArtattack
//
//  Created by Valentine on 29/03/2023.
//

import SwiftUI

struct ProfileButtons: View {
    var body: some View {
        HStack{
            PlaceButton()
            SettingButton()
        }
    }
}

struct ProfileButtons_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButtons()
    }
}

struct PlaceButton: View {
    
    var localFont = "Futura"
    var localFontSize = 15.0
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("mondrillanYellow"))
                
                Image(systemName: "pin.fill")
                    .resizable()
                    .frame(width: 20, height: 30)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(-45))
            }
            Text ("Mes Lieux")
                .foregroundColor(.black)
                .font(Font.custom(localFont, size: localFontSize))
                .fontWeight(.bold)
        }
    }
}

struct SettingButton: View {
    
    var localFont = "Futura"
    var localFontSize = 15.0
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("mondrillanRed"))
                
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                
            }
            Text ("Paramètres")
                .foregroundColor(.black)
                .font(Font.custom(localFont, size: localFontSize))
                .fontWeight(.bold)
        }
    }
}
