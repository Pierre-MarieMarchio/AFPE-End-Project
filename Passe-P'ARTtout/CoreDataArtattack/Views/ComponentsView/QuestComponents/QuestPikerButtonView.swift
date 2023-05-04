//
//  QuestPikerButtonView.swift
//  CoreDataArtattack
//
//  Created by Valentine on 27/03/2023.
//

import SwiftUI

struct QuestPikerButtonView: View {
    
    @Binding var selectedOption: Int
    var options: [String]
    
    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    self.selectedOption = 0
                }) {
                    Text(options[0])
                        .font(Font.custom("Futura", size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .buttonStyle(QuestButtonStyle(color: selectedOption == 0 ? Color("mondrillanYellow") : .white))
                
                Button(action: {
                    self.selectedOption = 1
                }) {
                    Text(options[1])
                        .font(Font.custom("Futura", size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(selectedOption == 1 ? .white : .black)
                }
                .buttonStyle(QuestButtonStyle(color: selectedOption == 1 ? Color("mondrillanRed") : .white))
                
                Button(action: {
                    self.selectedOption = 2
                }) {
                    Text(options[2])
                        .font(Font.custom("Futura", size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(selectedOption == 2 ? .white : .black)
                }
                .buttonStyle(QuestButtonStyle(color: selectedOption == 2 ? Color("mondrillanBlue") : .white))
            }
        }
        
    }
    
    //    @State private var selectedValue = 0
    //    var options: [String]
    //
    //    var body: some View {
    //        Picker(selection: $selectedValue, label: Text("")) {
    //            ForEach(0 ..< options.count) {
    //                Text(self.options[$0])
    //            }
    //        }.pickerStyle(.segmented)
    //            .foregroundColor(.white)
    //    }
}

struct QuestPikerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        QuestPikerButtonView(selectedOption: .constant(1), options: ["Evènement", "Hebdomadaire", "Permanent"])
    }
}


struct QuestButtonStyle: ButtonStyle {
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding(10)
            .background(color)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
