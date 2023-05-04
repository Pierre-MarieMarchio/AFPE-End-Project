//
//  PouchComponents.swift
//  CoreDataArtattack
//
//  Created by Valentine on 24/03/2023.
//

import SwiftUI

struct PouchComponents: View {
    var name: String
    var value: String
    var image: String
    var body: some View {
        
        
        ZStack {
            Rectangle()
                .foregroundColor(.orange)
                .opacity(0.0)
                .frame(maxWidth: 150, maxHeight: 110)
                .offset(x: 13, y: 10)
            
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(maxWidth: 80, maxHeight: 53)
                            .border(.black, width: 3)
                            .offset(x: 48, y: 16)
//IMAGE
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 70, maxHeight: 43)
                            .offset(x: 48, y: 16)
                    }
                    VStack {
                        HStack {
                            Rectangle()
                                .fill(CustomColor.mondrillanRed)
                                .frame(maxWidth: 13, maxHeight: 35)
                                .border(.black, width: 3)
                                .offset(x: 37, y: 26)
                            
                            Rectangle()
                                .fill(CustomColor.mondrillanBlue)
                                .frame(maxWidth: 19, maxHeight: 16)
                                .border(.black, width: 3)
                                .offset(x: 26, y: 34)
                            Rectangle()
                                .frame(maxWidth: 42, maxHeight: 3)
                                .border(.black, width: 3)
                                .offset(x: 1, y: 27)
                            
                        }
                        Rectangle()
                            .fill(CustomColor.mondrillanYellow)
                            .frame(maxWidth: 19, maxHeight: 15)
                            .border(.black, width: 3)
                            .offset(x: 2, y: 13)
                        
                    }
                }
                ZStack{
                    ZStack {
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(stops: [
                                Gradient.Stop(color: CustomColor.mondrillanYellow, location: 0.3),
                                Gradient.Stop(color: .white, location: 0.3)
                            ]), startPoint: .leading, endPoint: .trailing))
                            .frame(maxWidth: 103, maxHeight: 25)
                            .border(.black, width: 3)
//TEXT TITLE
                        Text(name)
                            .multilineTextAlignment(.trailing)
                            .offset(x: 23)
                            .font(Font.custom("Futura", size: 11))
                        Rectangle()
                            .frame(maxWidth: 42, maxHeight: 3)
                            .border(.black, width: 3)
                            .offset(x: -40, y: 11)
                        
                    }
                    Rectangle()
                        .fill(Color.white)
                        .frame(maxWidth: 36, maxHeight: 29)
                        .border(.black, width: 3)
                        .offset(x: -23)
//TEXT VALUE
                    Text(value)
                        .multilineTextAlignment(.center)
                        .offset(x: -23)
                        .font(Font.custom("Futura", size: 13))
                }
            }
        }
        .padding()
    }
}

struct PouchComponents_Previews: PreviewProvider {
    static var previews: some View {
        PouchComponents(name: "Claquette", value: "1", image: "vinyl")
    }
}
