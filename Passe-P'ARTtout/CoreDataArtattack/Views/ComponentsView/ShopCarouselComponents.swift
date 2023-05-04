//
//  ShopComponents.swift
//  CoreDataArtattack
//
//  Created by Valentine on 24/03/2023.
//

import SwiftUI

struct ShopCarouselComponents: View {
    
    var body: some View {
       
                    ZStack {
                        Rectangle()
                            .foregroundColor(.orange)
                            .opacity(0.0)
                            .frame(maxWidth: 230, maxHeight: 150)
                            .offset(x: 25, y: 10)
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(stops: [
                                Gradient.Stop(color: CustomColor.mondrillanYellow, location: 0.5),
                                Gradient.Stop(color: CustomColor.mondrillanRed, location: 0.5)
                            ]), startPoint: .leading, endPoint: .trailing))
                            .frame(maxWidth: 130, maxHeight: 100)
                            .border(.black, width: 3)
                            .offset(x: 15, y: 20)
                        
                        Rectangle()
                            .foregroundColor(CustomColor.mondrillanBlue)
                            .frame(maxWidth: 25, maxHeight: 22)
                            .border(.black, width: 3)
                            .offset(x: 89, y: 1)
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(maxWidth: 50, maxHeight: 3)
                            .border(.black, width: 3)
                            .offset(x: 110, y: -8.5)
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(maxWidth: 125, maxHeight: 72)
                                .border(.black, width: 3)
                            VStack {
                                
                                Text("Gare du Nord")
                                    .font(Font.custom("Futura", size: 10))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                                
                                Text("4 Pinceaux")
                                    .font(Font.custom("Futura", size: 10))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(1)
                            }
                            .padding(.top)
                            
                        }
                        .offset(x: 30, y: 45)
                        
                        Image("Cocorico")
                            .resizable()
                            .frame(maxWidth: 130, maxHeight: 74)
                            .border(.black, width: 3)
                        
                        Rectangle()
                            .foregroundColor(.orange)
                            .frame(maxWidth: 50, maxHeight: 3)
                            .border(.black, width: 3)
                            .offset(x: -64, y: 68.5)
                    }
                .padding()

//                    Rectangle()
//                        .fill(Color.gray)
//                        .frame(maxWidth: 100, maxHeight: 100)
//                        .padding()
                }
            }


struct ShopCarouselComponents_Previews: PreviewProvider {
    static var previews: some View {
        ShopCarouselComponents()
    }
}

