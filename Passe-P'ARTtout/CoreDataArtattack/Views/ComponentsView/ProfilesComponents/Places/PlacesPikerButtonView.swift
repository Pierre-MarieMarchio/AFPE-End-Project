//
//  PlacesPikerButtonView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import SwiftUI

struct PlacesPikerButtonView: View {
    
    
    @State private var selectedValue = 2
    
    var options: [String]
    
    let itemWidth: CGFloat = 400
    let itemHeight: CGFloat = 200
    
    @ObservedObject var profilVM: ProfileVM
    
    var filteredPlaces: [Place] {
            switch selectedValue {
            case 0:
                return profilVM.placesLoved.filter {
                    profilVM.searchText.isEmpty || $0.wrappedName.localizedStandardContains(profilVM.searchText)
                }
            case 1:
                return profilVM.placesHated.filter {
                    profilVM.searchText.isEmpty || $0.wrappedName.localizedStandardContains(profilVM.searchText)
                }
            case 2:
                return profilVM.placesSeen.filter {
                    profilVM.searchText.isEmpty || $0.wrappedName.localizedStandardContains(profilVM.searchText)
                }
            case 3:
                return profilVM.placesFavorite.filter {
                    profilVM.searchText.isEmpty || $0.wrappedName.localizedStandardContains(profilVM.searchText)
                }
            default:
                return []
            }
        }
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.selectedValue = 0
                }) {
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(selectedValue == 0 ? .white : .black)
                }
                .buttonStyle(PlacesPikerButtonStyle(color:Color(.green)))
                Button(action: {
                    self.selectedValue = 1
                }) {
                    Image(systemName: "hand.thumbsdown.fill")
                        .foregroundColor(selectedValue == 1 ? .white : .black)
                }
                .buttonStyle(PlacesPikerButtonStyle(color: Color(.red)))
                Spacer()
                    .frame(width: 30)
                Button(action: {
                    self.selectedValue = 2
                }) {
                    HStack{
                        
                        Text(self.options[2])
                            .frame(width: 90)
                            .fontWeight(.bold)
                            .foregroundColor(selectedValue == 2 ? .white : .black)
                        
                    }
                 
                }
                .buttonStyle(PlacesPikerButtonStyle(color: selectedValue == 2 ? Color("mondrillanBlue") : .white))
                Button(action: {
                    self.selectedValue = 3
                }) {
                    HStack{
                        
                        Text(self.options[3])
                            .frame(width: 90)
                            .fontWeight(.bold)
                            .foregroundColor(selectedValue == 3 ? .white : .black)
                       
                    }
                   
                        
                }
                .buttonStyle(PlacesPikerButtonStyle(color: selectedValue == 3 ? Color(.red) : .white))
            }
            .padding()
            
            ZStack{
                Rectangle()

                    .frame(maxWidth: 370, maxHeight: 3)
                    .border(.gray, width: 2)
                    .offset(y: 8)

                if selectedValue == 3 {
                    Rectangle()
                        .frame(maxWidth: 120, maxHeight: 5)
                        .border(.black, width: 4)
                        .offset(x: 115 ,y: 8)
                        .shadow(radius: 15)
                }
                if selectedValue == 2 {
                    Rectangle()
                        .frame(maxWidth: 120, maxHeight: 5)
                        .border(.black, width: 4)
                        .offset(x: -5 ,y: 8)
                        .shadow(radius: 15)
                }
                if selectedValue == 1 {
                    Rectangle()
                        .frame(maxWidth: 40, maxHeight: 5)
                        .border(.black, width: 4)
                        .offset(x: -107 ,y: 8)
                        .shadow(radius: 15)
                }
                if selectedValue == 0 {
                    Rectangle()
                        .frame(maxWidth: 40, maxHeight: 5)
                        .border(.black, width: 4)
                        .offset(x: -150 ,y: 8)
                        .shadow(radius: 15)
                }
            }
            
            GeometryReader { geometry in
                ScrollView {
                    LazyVStack(spacing: -20) {
                        if selectedValue == 0 {
                            ForEach(filteredPlaces) { place in
                                PlacesPikeButtonCellView(place: place, profilVM: profilVM).frame(width: itemWidth, height: itemHeight)
                            }
                        } else if selectedValue == 1 {
                            ForEach(filteredPlaces) { place in
                                PlacesPikeButtonCellView(place: place, profilVM: profilVM).frame(width: itemWidth, height: itemHeight)
                            }
                        } else if selectedValue == 2 {
                            ForEach(filteredPlaces) { place in
                                PlacesPikeButtonCellView(place: place, profilVM: profilVM).frame(width: itemWidth, height: itemHeight)
                            }
                        } else if selectedValue == 3 {
                            ForEach(filteredPlaces) { place in
                                PlacesPikeButtonCellView(place: place, profilVM: profilVM).frame(width: itemWidth, height: itemHeight)
                                
                            }
                        }
                    }
                }
            }
        }
        
        .onAppear {
            self.profilVM.fetchUserPlaceSeen()
            self.profilVM.fetchUserPlaceFavorite()
            self.profilVM.fetchUserPlaceHated()
            self.profilVM.fetchUserPlaceLoved()
        }
    }
}

struct PlacesPikerButtonStyle: ButtonStyle {
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}


struct PlacesPikerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesPikerButtonView(options: ["Option 1", "Option 2","Option 3", "Option4"], profilVM: ProfileVM())
    }
}

