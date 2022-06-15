//
//  itemModel.swift
//  todoList
//
//  Created by Sampel on 02/06/2022.
//

import Foundation

struct itemModel : Identifiable{
    var id: String = UUID().uuidString
    let title : String
    let isCompleted : Bool
    
    
    init(id : String = UUID().uuidString,title : String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updatedCompletion() -> itemModel {
        return itemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
