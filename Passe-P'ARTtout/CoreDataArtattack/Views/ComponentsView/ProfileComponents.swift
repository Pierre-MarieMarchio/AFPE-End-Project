//
//  ProfileComponents.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 27/03/2023.
//

import SwiftUI

struct ProfileComponents: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.orange)
                .opacity(0.0)
                .frame(maxWidth: 230, maxHeight: 150)
                .offset(x: 25, y: 10)
            Rectangle()
            .foregroundColor(.white)
            .frame(maxWidth: 60, maxHeight: 42)
            .border(.black, width: 3)
            .offset(x: -110, y: 90)
            Rectangle()
                .foregroundColor(CustomColor.mondrillanYellow)
                .frame(maxWidth: 59, maxHeight: 31)
                .border(.black, width: 3)
                .offset(x: -160, y: 85)
            Rectangle()
                .foregroundColor(CustomColor.mondrillanRed)
                .frame(maxWidth: 29, maxHeight: 33)
                .border(.black, width: 3)
                .offset(x: -145, y: 114)
            Rectangle()
                .foregroundColor(CustomColor.mondrillanYellow)
                .frame(maxWidth: 109, maxHeight: 16)
                .border(.black, width: 3)
                .offset(x: -9, y: -12)
           
            
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(stops: [
                        Gradient.Stop(color: CustomColor.mondrillanBlue, location: 0.1), Gradient.Stop(color: .black, location: 0.120),
                        Gradient.Stop(color: .white, location: 0.120)
                    ]), startPoint: .leading, endPoint: .trailing))
                    .frame(maxWidth: 265, maxHeight: 103)
                    .border(.black, width: 3)
                VStack {
                    //TEXT TITLE
                    HStack {
                        Image(systemName: "theatermasks.fill")
                        Text("Gare du Nord")
                    }

                        .lineLimit(1)
                        .font(Font.custom("Futura", size: 13))
                    //TEXT PRICE
                    Text("4 Pinceaux")
                        .lineLimit(1)
                        .font(Font.custom("Futura", size: 13))
                        .padding(.bottom)
                    
                    HStack {
                           
                        Image(systemName: "hand.thumbsup.fill")
                        Image(systemName: "hand.thumbsdown.fill")
                            .padding(.trailing)
                        Image(systemName: "suit.heart.fill")
                            .padding(.leading)
                    }
                    .font(.title2)
                    .offset(x: 40)
                }
                .offset(x: -30)
            }
            .offset(x: 50, y: 45)
//IMAGERectangle()
            
            Image("Cocorico")
                .resizable()
                .frame(maxWidth: 120, maxHeight: 95)
                .border(.black, width: 3)
                .offset(x: -120, y: 24)
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(maxWidth: 3, maxHeight: 50)
                .border(.black, width: 3)
                .offset(x: -81.5, y: 133)
        }
    .padding()

//                    Rectangle()
//                        .fill(Color.gray)
//                        .frame(maxWidth: 100, maxHeight: 100)
//                        .padding()
    }
}


struct ProfileComponents_Previews: PreviewProvider {
    static var previews: some View {
        ProfileComponents()
    }
}
