//
//  ListView.swift
//  todoList
//
//  Created by Sampel on 02/06/2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel : listViewModel
    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty{
               noItemView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }
            else{
                List{
                    ForEach(listViewModel.items){
                        item in ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem(IndexSet:))
                    .onMove(perform: listViewModel.moveItem(from:to:))
                    
                }.listStyle(PlainListStyle())
            }
        }
        
        .navigationTitle("Todo List📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView()))
    }
    
}
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel())
            .previewInterfaceOrientation(.portrait)
        }
    
}
