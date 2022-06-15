//
//  noItemView.swift
//  todoList
//
//  Created by Sampel on 11/06/2022.
//

import SwiftUI

struct noItemView: View {
    @State var animate  : Bool = false
    var body: some View {
        ScrollView{
            VStack{
                Text("There are no items")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Are you a productive person ? i think upi should click the add buttton and add a bunch of item to your todo list")
                    .padding(.bottom, 20)
                
                NavigationLink(destination: AddView(), label: {Text("Add Something 🥳 ")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height : 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.red : Color.accentColor)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? Color.red.opacity(0.7):
                            Color.accentColor.opacity(0.7),
                        radius: animate ? 30 : 10 ,
                        x: 0,
                        y: animate ? 50 : 30  )
                .scaleEffect(animate ?  1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth : 400)
            .multilineTextAlignment(.center)
            
            .padding(40)
            .onAppear(perform: addAmimation)
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
    }
    func addAmimation () {
        guard !animate else {
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            
            ) {
                animate.toggle()
        }
        }
    }
}

struct noItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            noItemView()
                .navigationTitle("Title")
        }
        .previewInterfaceOrientation(.landscapeLeft)
    }
}
