//
//  AddTestDataButtonView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 13 on 24/03/2023.
//
// ajout des données dans CoreData

import SwiftUI

struct AddTestDataButtonView: View {
    
    @EnvironmentObject var appData: ApplicationData // importe les données partagées dans l'EnvironmentObject (voir MapModel)
    
    @Environment(\.managedObjectContext) var dbContext //accède à la db
    
    // récupérer les données de CoreData
    @FetchRequest(entity: Place.entity(), sortDescriptors: []) var places: FetchedResults<Place>
    @FetchRequest(entity: User.entity(), sortDescriptors: []) var users: FetchedResults<User>
    @FetchRequest(entity: Prize.entity(), sortDescriptors: []) var prizes: FetchedResults<Prize>
    @FetchRequest(entity: Quest.entity(), sortDescriptors: []) var quests: FetchedResults<Quest>
    @FetchRequest(entity: Reward.entity(), sortDescriptors: []) var rewards: FetchedResults<Reward>
   
    
    func createData() {
        
        // connaître l'URL du sqlite
        let dossierDocument = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        print(dossierDocument.absoluteString)
        
        // vider les données de CoreData pour éviter les doublons
        for place in places{
            self.dbContext.delete(place)
        }
        for user in users{
            self.dbContext.delete(user)
        }
        for prize in prizes{
            self.dbContext.delete(prize)
        }
        for quest in quests{
            self.dbContext.delete(quest)
        }
        for reward in rewards{
            self.dbContext.delete(reward)
        }
        
        
        
        
        try? self.dbContext.save()
        
        //remplir avec des nouvelles données
        
        let newUser = User(context: dbContext)
        newUser.userID = 1
        newUser.mileage = 500.0
        newUser.totalPlaceSeen = 50
        newUser.totalQuestEvent = 50
        newUser.totalQuestCompleted = 50
        
        let newPlace1 = Place(context: dbContext)
        newPlace1.name = "Basilique Saint-Sernin"
        newPlace1.street = "13 place Saint-Sernin"
        newPlace1.city = "Toulouse"
        newPlace1.locationLat = 43.6084840
        newPlace1.locationLon = 1.4421570
        newPlace1.category = "architecture"
        newPlace1.placeDescription = "La basilique Saint-Sernin est le plus important édifice religieux catholique de Toulouse, chef-lieu de la région Occitanie. Elle se situe au cœur de la place du même nom, dans le secteur 1 de la ville. C'est une des plus grandes églises romanes conservées en Europe, avec la cathédrale de Spire, en Allemagne, et la cathédrale de Saint-Jacques-de-Compostelle, en Espagne."
        newPlace1.illustration = "basilique Saint-Sernin"
        newPlace1.addToLovedBy(newUser)
        newPlace1.addToSeenBy(newUser)
       
        let newPlace2 = Place(context: dbContext)
        newPlace2.name = "Musee Labit"
        newPlace2.city = "Toulouse"
        newPlace2.street = "17 rue du Japon"
        newPlace2.locationLat = 43.59090809312175
        newPlace2.locationLon = 1.4583601690479207
        newPlace2.category = "musée"
        newPlace2.placeDescription = "Musée du XIXe siècle avec art asiatique, objets de l'Egypte antique, bibliothèque et jardins botaniques."
        newPlace2.illustration = "musee Labit"
        newPlace2.addToLovedBy(newUser)
        newPlace2.addToSeenBy(newUser)
        
        let newPlace3 = Place(context: dbContext)
        newPlace3.name = "Théâtre Garonne"
        newPlace3.city = "Toulouse"
        newPlace3.street = "1 avenue du Château d'eau"
        newPlace3.locationLat = 43.60296580030021
        newPlace3.locationLon = 1.4252308555545714
        newPlace3.category = "théâtre"
        newPlace3.placeDescription = "Vaste salle dédiée aux créations contemporaines dont le théâtre, la danse et la musique d'Europe et du monde."
        newPlace3.addToFavoriteBy(newUser)
        newPlace3.illustration = "theatre Garonne"
        newPlace3.addToSeenBy(newUser)
        
        let newPlace4 = Place(context: dbContext)
        newPlace4.name = "Halle aux Grains"
        newPlace4.city = "Toulouse"
        newPlace4.street = "1 place Dupuy"
        newPlace4.locationLat = 43.60005186090927
        newPlace4.locationLon = 1.4543748690482259
        newPlace4.category = "music"
        newPlace4.placeDescription = "Marché de 1864 reconverti en salle de concert symphonique, résidence de l'Orchestre du Capitole de Toulouse"
        newPlace4.illustration = "halle aux grains"
        newPlace4.addToHatedBy(newUser)
        newPlace4.addToSeenBy(newUser)
        
        let newPlace5 = Place(context: dbContext)
        newPlace5.name = "Médiathèque José Canabis"
        newPlace5.city = "Toulouse"
        newPlace5.street = "1 allée Jacques Chaban-Delmas"
        newPlace5.locationLat = 43.61045
        newPlace5.locationLon = 1.45544
        newPlace5.category = "bibliothèque"
        newPlace5.placeDescription = "La plus grande médiathèque de la ville héberge une collection de livres, films et musique en libre accès."
        newPlace5.illustration = "mediatheque"
        newPlace5.addToSeenBy(newUser)
        
        let newPlace6 = Place(context: dbContext)
        newPlace6.name = "Théâtre du Capitole"
        newPlace6.city = "Toulouse"
        newPlace6.street = "place du Capitole"
        newPlace6.locationLat = 43.60415
        newPlace6.locationLon = 1.44427
        newPlace6.category = "théâtre"
        newPlace6.placeDescription = "Construit au XVIIIe siècle, ce théâtre à l'italienne accueille opéras, ballets, concerts et expositions."
        newPlace6.illustration = "theatre Capitole"
        
        let newQuest1 = Quest(context: dbContext)
        newQuest1.questDescription = "Rendez-vous devant l'autel"
        newQuest1.type = 2 // 0=événement, 1=périodique,  2=permanent
        newQuest1.questPlace = newPlace1 // basilique
        
        let newReward1 = Reward(context: dbContext)
        newReward1.name = "Un cierge"
        
        newQuest1.reward = newReward1
        
        
        let newQuest2 = Quest(context: dbContext)
        newQuest2.questDescription = "Trouver le sarcophage et identifier son origine"
        newQuest2.type = 2
        newQuest2.questPlace = newPlace2 // musée Labit
        
        let newReward2 = Reward(context: dbContext)
        newReward2.name = "Un morceau de papyrus"
        
        newQuest2.reward = newReward2
        
        
        let newQuest3 = Quest(context: dbContext)
        newQuest3.questDescription = "Trouver la statue de Shiva et découvrir sa signification"
        newQuest3.type = 2
        newQuest3.questPlace = newPlace2 // musée Labit
        
        let newReward3 = Reward(context: dbContext)
        newReward3.name = "Une statue de Shiva"
        
        newQuest3.reward = newReward3
        
        
        let newQuest4 = Quest(context: dbContext)
        newQuest4.questDescription = "Trouver le programme des spectacles du mois à venir"
        newQuest4.type = 1
        newQuest4.questPlace = newPlace3 // théâtre Garonne
        
        let newReward4 = Reward(context: dbContext)
        newReward4.name = "Une masque d'Arlequin"
        
        newQuest4.reward = newReward4
        
        let newQuest5 = Quest(context: dbContext)
        newQuest5.questDescription = "Admirer la galerie de photos des musiciens exposés autour du bâtiment"
        newQuest5.type = 2
        newQuest5.questPlace = newPlace4 // halle aux Grains
        
        
        let newReward5 = Reward(context: dbContext)
        newReward5.name = "Une flûte traversière"
        
        newQuest5.reward = newReward4
        
        let newQuest6 = Quest(context: dbContext)
        newQuest6.questDescription = "S'abonner à la médiathèque"
        newQuest6.type = 0
        newQuest6.questPlace = newPlace5 // médiatheque
        
        let newReward6 = Reward(context: dbContext)
        newReward6.name = "Un marque-page"
        
        newQuest6.reward = newReward6
        
        
        let newQuest7 = Quest(context: dbContext)
        newQuest7.questDescription = "Prendre le programme des animations du mois"
        newQuest7.type = 1
        newQuest7.questPlace = newPlace5 // médiatheque
        
        let newReward7 = Reward(context: dbContext)
        newReward7.name = "Un carnet de croquis"
        
        newQuest7.reward = newReward7
        
        let newQuest8 = Quest(context: dbContext)
        newQuest8.questDescription = "Repérer les dates du prochain opéra et se renseigner sur l'oeuvre"
        newQuest8.type = 0
        newQuest8.questPlace = newPlace6 // opéra
        
        let newReward8 = Reward(context: dbContext)
        newReward8.name = "Un fauteuil d'orchestre"
        
        newQuest8.reward = newReward8
        
        let newQuest9 = Quest(context: dbContext)
        newQuest9.questDescription = "Aller voir l'exposition temporaire dans le hall de l'étage"
        newQuest9.type = 0
        newQuest9.questPlace = newPlace6 // opéra
        
        let newReward9 = Reward(context: dbContext)
        newReward9.name = "Une coupe de champagne"
        
        newQuest9.reward = newReward9
        
        let newPrize1 = Prize(context: dbContext)
        newPrize1.name = "Une invitation à l'inauguration de l'exposition 'revoir Angkor une fois'"
        
        newPrize1.category = "Invitation"
        newPrize1.illustration = ""
        newPrize1.price = 100
        newPrize1.addToOwnedBy(newUser)
        
        let newPrize2 = Prize(context: dbContext)
        newPrize2.name = "Van Gogh"
        newPrize2.category = "avatar"
        newPrize2.illustration = ""
        newPrize2.price = 200
        newPrize2.addToOwnedBy(newUser)
        
        let newPrize3 = Prize(context: dbContext)
        newPrize3.name = "Les nénuphars"
        newPrize3.category = "fond d'écran"
        newPrize3.illustration = ""
        newPrize3.price = 150
        newPrize3.addToOwnedBy(newUser)
        
        do {
           try dbContext.save()
            print("données sauvegardées")
            
        } catch {
           print("Error saving record")
        }
        
    }
    
    var body: some View {
        Button(action: {createData()}, label: {Image(systemName: "arrow.down.circle.fill")
                .padding()
                .foregroundColor(Color("mondrillanYellow"))
                .font(.largeTitle)
                .shadow(radius: 5,x: 2,y:2)
        })
    }
}

struct AddTestDataButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddTestDataButtonView()
    }
}
