//
//  SettingCarouselView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 30 on 24/03/2023.
//

import SwiftUI

struct SettingCarouselWallpaperView: View {
    let itemWidth: CGFloat = 80
    let itemHeight: CGFloat = 110
    @State var image: Illustration
  
    var body: some View {
       
        
         
                
                
               
                    Image(image.wallpaper)
                .resizable()
                
                        .border(.brown, width: 2)
                        .frame(maxWidth: 80, maxHeight: 110)
                    
                 
        
               
                
                    
                
            
        }
       
    }


struct SettingCarouselProfileIllustrationView: View {
    let itemWidth: CGFloat = 90
    let itemHeight: CGFloat = 90
    @State var image: Illustration
    
    var body: some View {
     
        
      
                
                
              
               
               
                    Image(image.profileIllustration)
                        .resizable()
                        .border(.brown, width: 2)
                        .frame(maxWidth: itemWidth, maxHeight: itemHeight)
               
                  
                
                    
                    
                
           
        }
       
    }


struct SettingCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
