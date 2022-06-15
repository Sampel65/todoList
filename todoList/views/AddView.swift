//
//  AddView.swift
//  todoList
//
//  Created by Sampel on 02/06/2022.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var  listViewModel : listViewModel
    @State private var textFiledText = ""
    var body: some View {
        ScrollView{
            VStack {
                 TextField("Type something here", text: $textFiledText)
                    .padding(.horizontal)
                    .frame( height: 55)
                    .background(Color.gray )
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: { Text("SAVE".uppercased())
                        .foregroundColor(.white)
                        .font(.title)
                        .frame( height: 55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                    
                    })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊")
        
        
    }
    func saveButtonPressed() {
        listViewModel.addItem(title : textFiledText)
        presentationMode.wrappedValue.dismiss()
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
