//
//  DividerTitleComponent.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 29/03/2023.
//

import SwiftUI

struct DividerTitleComponent: View {
    
    var title: String
    var offsetNegatif: CGFloat
    var offsetPositif: CGFloat
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.black)
                .frame(maxWidth: 300, maxHeight: 3)
                .border(.black, width: 2)
                .offset(x: offsetNegatif)
            Text(title)
                .font(Font.custom("Futura", size: 20.0))
                .fontWeight(.bold)
            Rectangle()
                .foregroundColor(.black)
                .frame(maxWidth: 300, maxHeight: 3)
                .border(.black, width: 2)
                .offset(x: offsetPositif)
        }
    }
}

struct DividerTitleComponent_Previews: PreviewProvider {
    static var previews: some View {
        DividerTitleComponent(title: "test", offsetNegatif: -210, offsetPositif: 210)
    }
}
