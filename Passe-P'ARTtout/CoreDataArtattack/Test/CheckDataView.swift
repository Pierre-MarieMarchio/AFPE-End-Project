//
//  CheckDataView.swift
//  CoreDataArtattack
//
//  Created by Apprenant 13 on 28/03/2023.
//
// View dédié à la visualisation des entités de CoreData

import SwiftUI

struct CheckDataView: View {
    
    @FetchRequest(sortDescriptors: [], predicate: nil, animation: .default) private var places:FetchedResults<Place>
    
    @FetchRequest(sortDescriptors: [], predicate: nil, animation: .default) private var users:FetchedResults<User>
    
    @FetchRequest(sortDescriptors: [], predicate: nil, animation: .default) private var prizes:FetchedResults<Prize>
    
    @FetchRequest(sortDescriptors: [], predicate: nil, animation: .default) private var quests:FetchedResults<Quest>
    
    @FetchRequest(sortDescriptors: [], predicate: nil, animation: .default) private var rewards:FetchedResults<Reward>
    
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                Section("places"){
                        ForEach(places) {place in
                            Text(place.wrappedName)
                    }
                }
                Section("users"){
                     
                        ForEach(users) {user in
                            Text(String(user.userID))
                        
                    }
                }
                Section("prizes"){
                     
                        ForEach(prizes) {prize in
                            Text(prize.wrappedName)
                        
                    }
                }
                Section("quests"){
                     
                        ForEach(quests) {quest in
                            Text(quest.questDescription ?? "?")
                        }
                    
                }
                Section("rewards"){
                     
                        ForEach(rewards) {reward in
                            Text(reward.wrappedName)
                        }
                    
                }
                 
            } // fin Form
            .navigationBarTitle("Données de CoreData")
        }
        
    }
}

struct CheckDataView_Previews: PreviewProvider {
    static var previews: some View {
        CheckDataView()
    }
}
