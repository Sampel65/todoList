//
//  listViewModel.swift
//  todoList
//
//  Created by Sampel on 06/06/2022.
//

import Foundation
import SwiftUI

class listViewModel: ObservableObject{
    
    @Published var items : [ itemModel] = []
    
    init() { getItems()
        
    }
    
    func getItems(){
        let newItems = [
            itemModel(title: "This is the completed", isCompleted: true),
            itemModel(title: "This is the second todo", isCompleted: false),
            itemModel(title: "THIRD", isCompleted: true)
        ]
      //  items.append(contentsOf: newItems)
    }
    
    func deleteItem(IndexSet:IndexSet){
         items.remove(atOffsets: IndexSet)
    }
    
    func moveItem(from: IndexSet, to : Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    
    func addItem (title : String){
       let newItem = itemModel(title: title, isCompleted: false) 
       items.append(newItem)
    }
    
    func updateItem(item: itemModel){
        if let index = items.firstIndex(where: { $0.id == item.id}){
            items [index] = item.updatedCompletion()
    }
  }
}
