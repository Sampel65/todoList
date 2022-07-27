//
//  noteHome.swift
//  todoList
//
//  Created by Sampel on 14/06/2022.
//

import SwiftUI

struct noteHome :  View {
    
    private var _leadingTitle  : some View{
        Text( "My Note")
            .font(.title2)
            .foregroundColor(.black)
    }
    
    var body: some View{
        NavigationView{
            VStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Search Anything", text: .constant(""))
                    .foregroundColor(.black)
                    .font(.headline)
                }
                .padding()
                .background(.gray)
                .cornerRadius(6)
                .padding()
                noteTypeView()
                
                ScrollView(.vertical, showsIndicators: true, content: {
                   NoteViewItem()
                })
                Spacer()
            }
            .background(Color.white)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading: _leadingTitle, trailing: Image(systemName: "heart.circle.fill"))
                
                
        }
        
    }
    
}
struct NoteViewItem  : View{
    var body : some View {
        VStack(alignment: .leading, spacing: nil , content: {
            HStack{
                    Image(systemName: "bell")
                    .foregroundColor(.white)
                    .frame(width : 40, height : 40)
                    .background(.green)
                    .cornerRadius(20)
                
                VStack(alignment: .leading){
                    Text("Summer Vacation")
                        .foregroundColor(.black)
                        .font(.headline)
                    Text("24 Nov 2022, 02: 38PM")
                        .foregroundColor(.black)
                        .font(.subheadline)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
                .background(Color.gray)
                .padding(.trailing)
                .padding(.leading)
                
            
        })
        .background(.white)
        .cornerRadius(8)
        .shadow(color: .black.opacity(0.4), radius: 8, x: 0.0, y: 3)
        .padding()
        
    }
}

struct noteHomePreview : PreviewProvider {
    static var previews: some View{
        noteHome()
    }
    
}
