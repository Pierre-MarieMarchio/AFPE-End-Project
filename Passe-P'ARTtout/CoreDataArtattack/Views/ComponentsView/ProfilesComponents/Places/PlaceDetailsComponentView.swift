//
//  SwiftUIView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 30/03/2023.
//

import SwiftUI


struct PlaceDetailsComponentView: View {
    
    var placeWrappedCategory: String
    
    var body: some View {
        Group {
            ZStack{
                Image("imagePlaceDetailsComponent")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 1200)
                    .offset(x: -50)
                    
                switch placeWrappedCategory {
                case "architecture":
                    Image(systemName: "building.columns.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 110, y: -65)
                case "théâtre":
                    Image(systemName: "theatermasks.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 110, y: -65)
                case "musée":
                    Image(systemName: "building.columns.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 110, y: -65)
                case "music":
                    Image(systemName: "music.note.list")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 110, y: -65)
                case "bibliothèque":
                    Image(systemName: "books.vertical.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 110, y: -65)
                default:
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 110, y: -65)
                }
                    
                    
                VStack(alignment: .center) {
                    
                        Image("place.wrappedIllustration")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .border(.black, width: 6)
                            .offset(x: -50, y: 60)

                    VStack(alignment: .leading) { // bloc nom, ville, rue
                        Text("place.wrappedName")
                            .fontWeight(.bold)
                            .font(Font.custom("Futura", size: 20))
                            .padding()
                        VStack(alignment: .leading){
                            Text("place.wrappedCity")
                                .fontWeight(.light)
                                .font(Font.custom("Futura", size: 15))
                            Text("place.wrappedStreet")
                                .fontWeight(.ultraLight)
                                .font(Font.custom("Futura", size: 15))
                        }
                        .offset(y: -25)
                        .padding()
                        Spacer()
                        Text("place.wrappedPlacedescription")
                            .fontWeight(.ultraLight)
                            .font(Font.custom("Futura", size: 15))
                            .padding()
                    }
                    .frame(maxWidth: 240, maxHeight: 300)
                    .border(.black, width: 3)
                    .offset(x: 58, y: 50)
                    
                    
                    
                    Button(action: {
                        //                showPlaceDetail = false
                        //                appData.selectedPlace = nil
                    }, label: {
                        Image(systemName: "map.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50,height: 50)
                    })
                    .offset(x: -20, y: 64)
                }
            }
        }
        .frame(maxWidth: 250, maxHeight: 400, alignment: .center)
        .background(Color.white)

     //   .toolbar(.hidden, for: .navigationBar)
    }
}

struct PlaceDetailsComponent_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailsComponentView(placeWrappedCategory: "architecture")
    }
}
