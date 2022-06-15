//
//  noteTypeView.swift
//  todoList
//
//  Created by Sampel on 14/06/2022.
//

import SwiftUI

struct noteTypeView: View {
    
    @State var selectedType : TypeView = .allNotes
    
    enum TypeView: String, CaseIterable, Identifiable{
        
        var id : String{
            return rawValue.capitalized
        }
        
        case allNotes
        case Reminder
        case audio
        case images
        
        
    }
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            HStack{
                ForEach(TypeView.allCases){ eachType in
                    Button(action: {selectedType = eachType}, label:
                            {Text(eachType.id)
                            .foregroundColor(selectedType == eachType ? .white : .black)
                            .font(.caption)
                            .padding()
                        
                        
                    })
                    .frame(height : 34)
                    .background(selectedType == eachType ? Color.blue : .gray)
                    .cornerRadius(4)
                   
                }
                
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
        })
    }
}

struct noteTypeView_Previews: PreviewProvider {
    static var previews: some View {
        noteTypeView()
    }
}
