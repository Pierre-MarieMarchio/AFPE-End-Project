import SwiftUI


struct ShopView: View {
    
    var shopCategory = ["Activités","Fond d'écrans","Avatars"]
    var activitiesShop: [Activity] = [Activity(name: "Opéra", price: "15 Masques", image: "Jenüfa"), Activity(name: "Concert", price: "15 Micros", image: "B&O"), Activity(name: "Exposition", price: "10 Pinceaux", image: "Acquisitions")]
    var wallpapersShop: [Wallpaper] = [Wallpaper(name: "Jardin", price: "1 Photo", image: "Jardin"), Wallpaper(name: "Rue de Toulouse", price: "1 Compas", image: "RueToulouse"), Wallpaper(name: "Rebelle", price: "2 Claquettes", image: "Rebelle")]
    var avatarsShop: [Avatar] = [Avatar(name: "Lune de Melies", price: "2 Claquettes", image: "MeliesMoon"), Avatar(name: "Da Vinci", price: "1 Pinceau", image: "LeoDaVinci"), Avatar(name: "Chihiro", price: "1 Manga", image: "Chihiro")]
    var body: some View {
        ZStack {
            CustomColor.fondGris
                .ignoresSafeArea()
            
            GeometryReader { geometry in
                VStack {
                    DividerTitleComponent(title: "Activités", offsetNegatif: -230, offsetPositif: 230)
                 
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: -50) {
                            ForEach(activitiesShop, id: \.self) { shopComponent in
                                ActivitiesShopComponents(name: shopComponent.name, price: shopComponent.price, image: shopComponent.image)
                                
                                
                            }
                            .frame(minWidth: 230)
                        }
                    }
                    DividerTitleComponent(title: "Fonds d'écrans", offsetNegatif: -230, offsetPositif: 230)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: -50) {
                            ForEach(wallpapersShop, id: \.self) { shopComponent in
                                WallpaperShopComponents(name: shopComponent.name, price: shopComponent.price, image: shopComponent.image)
                                
                            }
                            .frame(minWidth: 230)
                        }
                    }
                    DividerTitleComponent(title: "Avatars", offsetNegatif: -230, offsetPositif: 230)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: -50) {
                            ForEach(avatarsShop, id: \.self) { shopComponent in
                                AvatarShopComponents(name: shopComponent.name, price: shopComponent.price, image: shopComponent.image)
  
                            }
                            .frame(minWidth: 230)
                        }
                    }
                }
                .navigationBarTitle(Text("Boutique").font(.custom("Futura", size: 24)))
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
