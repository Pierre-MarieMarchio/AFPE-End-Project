//
//  ProfileComponents.swift
//  CoreDataArtattack
//
//  Created by Apprenant 10 on 27/03/2023.
//

import SwiftUI



struct PlacesPikeButtonCellView: View {
    
    var place: Place
    @ObservedObject var profilVM: ProfileVM
   
    
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
                    VStack {
                        VStack {
                            HStack() {
                                switch place.wrappedCategory {
                                case "architecture":
                                    Image(systemName: "building.columns.fill")
                                    
                                case "théâtre":
                                    Image(systemName: "theatermasks.fill")
                                    
                                case "musée":
                                    Image(systemName: "building.columns.fill")
                                    
                                case "music":
                                    Image(systemName: "music.note.list")
                                  
                                case "bibliothèque":
                                    Image(systemName: "books.vertical.fill")
                                  
                                default:
                                    Image(systemName: "questionmark.circle")
                                   
                                }
                                Text("\(place.wrappedName)")
                                    .font(Font.custom("Futura", size: 16))
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                            }
                            .frame(width: 210, alignment: .leading)
                            .offset(x: 45, y : -10)
                        }
                    }
                        
                    
                    HStack {
                        Button(action: {
                            if profilVM.placesLoved.contains(place) { withAnimation {
                                profilVM.placesLoved.removeAll(where: { $0.id == place.id })
                                
                            }
                                    } else {
                                        profilVM.placesLoved.append(place)
                                    }
                                }) {
                                    Image(systemName: profilVM.placesLoved.contains(place) ? "hand.thumbsup.fill" : "hand.thumbsup")
                                        .foregroundColor(.green)
                                }
                        Button(action: {
                            if profilVM.placesHated.contains(place) { withAnimation {
                                profilVM.placesHated.removeAll(where: { $0.id == place.id })
                            }
                                    } else {
                                        profilVM.placesHated.append(place)
                                    }
                                
                                }) {
                                    Image(systemName: profilVM.placesHated.contains(place) ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                                        .foregroundColor(.red)
                                }
                            .padding(.trailing)
                        Spacer ()
                        Button(action: {
                            if profilVM.placesFavorite.contains(place) { withAnimation {
                                profilVM.placesFavorite.removeAll(where: { $0.id == place.id })
                            }
                                    } else {
                                        profilVM.placesFavorite.append(place)
                                    }
                                }) {
                                    Image(systemName: profilVM.placesFavorite.contains(place) ? "heart.fill" : "heart")
                                        .foregroundColor(.red)
                                }
                            .padding(.leading)
                    }
                    .frame(width: 210, alignment: .leading)
                    .offset(x: 48, y: 20)
                  
                }
                .offset(x: -30)
            }
            .offset(x: 50, y: 45)
            Image(place.wrappedIllustration)
                .resizable()
                .frame(maxWidth: 130, maxHeight: 130)
                .border(.black, width: 3)
                .offset(x: -110, y: 20)
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(maxWidth: 3, maxHeight: 50)
                .border(.black, width: 3)
                .offset(x: -81.5, y: 133)
        }
    .padding()
    }
}


//struct PlacesPikeButtonCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlacesPikeButtonCellView(place: Place())
//    }
//}
