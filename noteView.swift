//
//  noteView.swift
//  todoList
//
//  Created by Sampel on 14/06/2022.
//

import SwiftUI

struct noteView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("NOTELY")
                    .font(.title)
                    .font(.title2)
                    .padding()
                
                Text("Capture whats on your mind and get a reminder later at the right place or time. you can also add voice memo and other features")
                    .font(.subheadline)
                    .font(.system(size: 16))
            }
            Spacer()
            
            ZStack(alignment: .bottomTrailing){
                Image("splah")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Button (action: {},
                 label: {
                    HStack{
                        Text("Lets go")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(width: 164, height: 52)
                    .background(.blue)
                    .cornerRadius(30.5)
                    .padding(.trailing)
                })

            }
        }
}

struct noteView_Previews: PreviewProvider {
    static var previews: some View {
        noteView()
    }
}
}
