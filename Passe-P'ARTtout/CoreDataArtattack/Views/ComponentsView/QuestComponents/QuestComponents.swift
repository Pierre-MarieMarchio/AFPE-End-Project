//
//  QuestComponents.swift
//  CoreDataArtattack
//
//  Created by Valentine on 28/03/2023.
//

import SwiftUI

struct QuestComponents: View {
    
    var quest: Quest
    
    var place:String {
        quest.wrappedQuestPlace.wrappedName
    }
    var description:String {
        quest.wrappedQuestDescription
    }
    var location: String{
        quest.wrappedQuestPlace.wrappedCity
    }
    var illustration: String {
        quest.wrappedQuestPlace.wrappedIllustration
    }
    
    var body: some View {
        ZStack{
           Color("fondGris")
//            ZStack { // zone de titre
//                Rectangle()
//                    .foregroundColor(.white)
//                    .border(.black, width: 3)
//
//                Text(place) // nom du lieu (place="lieu")
//                    .bold()
//                    .font(Font.custom("Futura", size: 15))
//            }
//            .frame(width: 180, height: 50)
//            .offset(x: 37, y: 5 )
//
            /*    Rectangle()
             .foregroundColor(.orange)
             .opacity(1.0)
             .frame(maxWidth: 230, maxHeight: 150)
             .offset(x: 25, y: 10)*/
            
            Rectangle() // bleu
                .foregroundColor(CustomColor.mondrillanBlue)
                .frame(maxWidth: 25, maxHeight: 22)
                .border(.black, width: 3)
                .offset(x: -160, y: 54)
            
            Rectangle() //jaune
                .foregroundColor(CustomColor.mondrillanYellow)
                .frame(maxWidth: 25, maxHeight: 15)
                .border(.black, width: 3)
                .offset(x: -90, y: 70)
            
            Rectangle() //rouge
                .foregroundColor(CustomColor.mondrillanRed)
                .frame(maxWidth: 50, maxHeight: 22)
                .border(.black, width: 3)
                .offset(x: -125, y: 54)
            
            Rectangle() // trait noir vertical
                .foregroundColor(.black)
                .frame(maxWidth: 300, maxHeight: 3)
                .border(.black, width: 3)
                .offset(x: -275, y: 44.5)
            
            ZStack { // blanc, fond pour description
                Rectangle()
                    .foregroundColor(.white)
                    .frame(maxWidth: 260, maxHeight: 90)
                    .border(.black, width: 3)
                VStack (alignment: .leading){
                    
                    Text(description) // description = "blablabla"
                        .font(Font.custom("Futura", size: 13))
                        .fontWeight(.regular)
                        
                        .lineLimit(3)
                        .offset(x: 10, y: 5)
                        .frame(maxWidth: 200, maxHeight: 120)
                    
                    /*         Text(location)
                     .font(Font.custom("Futura", size: 10))
                     .bold()
                     .fontWeight(.regular)
                     .multilineTextAlignment(.center)
                     .lineLimit(1)
                     .offset(x: 80, y: 15)*/
                }
                .padding()
            }
            .offset(x: 50, y: 37)
            
            ZStack { // zone de titre
                Rectangle()
                    .foregroundColor(.white)
                    .border(.black, width: 3)
                
                Text(place) // nom du lieu (place="lieu")
                    .bold()
                    .font(Font.custom("Futura", size: 15))
            }
            .frame(width: 180, height: 50)
            .offset(x: 37, y: -15 )
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(maxWidth: 3, maxHeight: 100)
                .border(.black, width: 3)
                .offset(x: -148.5, y: 90)
            
            Image(illustration) //illustration = "basilique Saint-Sernin"
                .resizable()
//                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
                .border(.black, width: 3)
                .offset(x: -100, y: -4)
            
          
        }
        .frame(maxHeight: 150)
    }
}
/*
 struct QuestComponents_Previews: PreviewProvider {
 
 static var previews: some View {
 QuestComponents()
 }
 }
 */
