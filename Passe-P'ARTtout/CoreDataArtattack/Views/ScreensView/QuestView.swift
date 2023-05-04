//
//  QuestView.swift
//  CoreDataArtattack
//
//  Created by Valentine on 24/03/2023.
//

import SwiftUI

struct QuestView: View {
    
    @State var selectedOption: Int
    
    var body: some View {
        
        ZStack {
            CustomColor.fondGris
                .ignoresSafeArea()
               
            VStack{
                QuestPikerButtonView(selectedOption: $selectedOption, options: ["Evénement", "Périodique", "Permanent"])
                    .frame(maxWidth: 400, maxHeight: 100)
                
                ScrollView {
                    QuestList(selectedOption: $selectedOption)
                        .scaledToFit()
                }
                Spacer()
            }
            .font(Font.custom("Futura", size: 14))
            .navigationTitle("Quêtes")
            
        }
    }
}
struct QuestView_Previews: PreviewProvider {
    static var previews: some View {
        QuestView(selectedOption: 0)
    }
}
