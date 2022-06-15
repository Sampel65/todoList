//
//  todoListApp.swift
//  todoList
//
//  Created by Sampel on 02/06/2022.
//

import SwiftUI

@main
struct todoListApp: App {
    
    @StateObject var listModel : listViewModel = listViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel())
        }
    }
}
