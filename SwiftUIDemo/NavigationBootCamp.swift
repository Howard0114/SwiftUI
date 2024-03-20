//
//  NavigationBootCamp.swift
//  SwiftUIDemo
//
//  Created by SunHaobo on 2024/3/19.
//

import SwiftUI

struct NavigationBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("click here to navigate", destination: SecondPage())
                Text("hello world")
                Text("hello world")
                Text("hello world")
            }
            .navigationTitle("fist page")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
//            .navigationBarBackButtonHidden()
            .navigationBarItems(
                leading:HStack(content: {
                    Image(systemName: "person.fill").font(.title2)
                    Image(systemName: "flame.fill").font(.title2)
                }),
                trailing: NavigationLink(destination: {
                    SecondPage()
                }, label: {
                    Image(systemName: "gear").font(.title2)
                })
            )
        }
        
    }
}

struct SecondPage: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack (spacing: 100){
                Button("back") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("click here", destination: Text("3rd screen"))
            }

        }
    }
}

struct NavigationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootCamp()
    }
}
