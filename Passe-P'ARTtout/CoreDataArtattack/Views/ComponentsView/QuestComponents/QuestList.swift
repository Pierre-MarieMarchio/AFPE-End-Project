import SwiftUI

struct QuestList: View {
    
    @Binding var selectedOption: Int
    
    @FetchRequest(entity: Quest.entity(), sortDescriptors: []) var quests: FetchedResults<Quest>
    
    var selectedQuestList:[Quest] {
        quests.filter {
            quest in
            selectedOption == quest.type
        }
    }
    
    var body: some View {
      
            VStack(alignment: .leading) {
                ForEach(selectedQuestList) { quest in
                    QuestComponents(quest: quest)
                }
                .frame(maxWidth: .infinity)
            }
        
    }
}
/*
 struct QuestList_Previews: PreviewProvider {
 static var previews: some View {
 QuestList(selectedOption: .constant(0))
 }
 }
 $
*/
